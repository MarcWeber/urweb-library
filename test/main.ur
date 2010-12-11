fun main () = return <xml><body>
  <h1> some small tests for this library</h1>

  <h2>enum class</h2>

  counting up:<br/>
  enum 1 .. 10 : {[show (Enum.to 1 10)]} <br/>
  enum a .. z  : {[show (Enum.to #"a" #"z") ]} <br/>
  <br/>
  counting down:<br/>
  enum 10 .. 0 : {[show (Enum.downto 10 1 ) ]}
  enum z .. a  : {[show (Enum.downto #"z" #"a") ]}

</body></xml>


