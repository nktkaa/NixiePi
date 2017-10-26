require 'pi_piper'
include PiPiper

Process.daemon
$PROGRAM_NAME = "nixieclock-daemon"

h11 = PiPiper::Pin.new(:direction => :out, :pin => 23)
h12 = PiPiper::Pin.new(:direction => :out, :pin => 24)
h13 = PiPiper::Pin.new(:direction => :out, :pin => 25)
h14 = PiPiper::Pin.new(:direction => :out, :pin => 18)

h21 = PiPiper::Pin.new(:direction => :out, :pin => 21)
h22 = PiPiper::Pin.new(:direction => :out, :pin => 20)
h23 = PiPiper::Pin.new(:direction => :out, :pin => 16)
h24 = PiPiper::Pin.new(:direction => :out, :pin => 12)

m11 = PiPiper::Pin.new(:direction => :out, :pin => 26)
m12 = PiPiper::Pin.new(:direction => :out, :pin => 19)
m13 = PiPiper::Pin.new(:direction => :out, :pin => 13)
m14 = PiPiper::Pin.new(:direction => :out, :pin => 6)

m21 = PiPiper::Pin.new(:direction => :out, :pin => 17)
m22 = PiPiper::Pin.new(:direction => :out, :pin => 27)
m23 = PiPiper::Pin.new(:direction => :out, :pin => 22)
m24 = PiPiper::Pin.new(:direction => :out, :pin => 5)

pin = [[h11, h12, h13, h14],
	   [h21, h22, h23, h24],
	   [m11, m12, m13, m14],
	   [m21, m22, m23, m24]]

def pin_reset(pin)
	pin.each{|sub| sub.each{|p| p.off}}
end

def time_setup(arr, *time)
	time.each do |t|
		if t.length < 2
			arr << "0" << t
		else
			arr << t[0] << t[1]
		end
	end
end

def decode(time)
	time.map!{|t| "%04b" % t}
end

def pin_write(pin, dec_time)
	for i in 0..3
		for k in 0..3
			if dec_time[i][k] == "1"
				pin[i][k].on
			else
				pin[i][k].off
			end
		end
	end
end

loop do
	pin_reset(pin)
	time = Time.now
	hours = time.hour.to_s
	minutes = time.min.to_s
	arr = Array.new
	time_setup(arr, hours, minutes)
	decode(arr)
	pin_write(pin, arr)
	sleep(30)
end