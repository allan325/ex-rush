/*

/ Ano bissexto

use std::io;
fn main() {
    let mut entrada = String::new();
    println!("Digite o ano que vc quer verificar se é  bissexto");
    io::stdin().read_line(&mut entrada).unwrap();
    let ano: i32 = entrada.trim().parse().unwrap();

    if ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0)  {
        print!("é ano bissexto");
    }else {
        print!("não é bissexto");
    }
} 


/ Acrônimo
use std::io;

fn main() {
    let mut entrada = String::new();

    println!("Digite uma frase:");
    io::stdin().read_line(&mut entrada).unwrap();

    for palavra in entrada.split_whitespace() {
        let primeira_letra = palavra.chars().next().unwrap();

        print!("{}", primeira_letra);
    }
} */
