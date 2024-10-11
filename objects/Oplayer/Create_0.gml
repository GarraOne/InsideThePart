	//Velocidade
	spd = 20;
	//Velocidade vertical
	vspd = 0;
	//Velocidade horizontal
	hspd = 0;
	//pause
	Pausente = 0;
	//Coletavel do Arquivo
	global.coletavel = 0;
	// tiros
	global.bullets = 8;
	state = PlayerState.FREE;
	enum PlayerState
	{
		FREE,
		FREEZE
	}