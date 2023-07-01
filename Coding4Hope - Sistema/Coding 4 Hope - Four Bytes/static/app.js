let ctx = document.getElementById('grafico_doacoes').getContext('2d');

const meses = [
	'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
	'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'];

const doacoes2020 = [6337.21, 2536.59, 3367.29, 1377.67, 2576.11, 1946.13, 6980.38, 1387.68, 3082.11, 4936.32, 1481.88, 7012.08];

const doacoes2021 = [1364.50, 4224.06, 844.70, 3715.43, 7923.74, 977.48, 5709.15, 3873.93, 1010.02, 5026.35, 2062.94];

let graficoDoacoes = new Chart(ctx, {
	type: 'bar',
	data: {
		labels: meses,
		datasets: [
			{
				label: '2020',
				data: doacoes2020,
				borderColor: '#EA4BB6',
				backgroundColor: '#F064DC',
			},
			{
				label: '2021',
				data: doacoes2021,
				borderColor: '#CA2956',
				backgroundColor: '#E43289',
			}
		]
	}
})
