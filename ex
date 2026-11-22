/*

/ Ano bissexto

pub fn is_leap_year(year: u64) -> bool {
    if year % 400 == 0 {
        true
    } else if year % 100 == 0 {
        false
    } else if year % 4 == 0 {
        true
    } else {
        false
    }
}
fn main() -> std::io::Result<()> {
    let mut entrada = String::new();
    println!("Digite um ano:");
    std::io::stdin().read_line(&mut entrada)?;
    let ano: u64 = match entrada.trim().parse() {
        Ok(valor) => valor,
        Err(_) => {
            eprintln!("Ano inválido. Digite um número inteiro não negativo.");
            return Ok(());
        }
    };
    if is_leap_year(ano) {
        println!("{ano} é um ano bissexto.");
    } else {
        println!("{ano} não é um ano bissexto.");
    }
    Ok(())
}


/ Acrônimo
pub fn abbreviate(phrase: &str) -> String {
    let mut acronym = String::new();

    for word in phrase.split(|ch: char| !ch.is_alphabetic() && ch != '\'') {
        let mut last_lowercase = false;

        for (index, letter) in word.chars().enumerate() {
            if index == 0 && letter.is_alphabetic() {
                acronym.push(letter.to_ascii_uppercase());
            } else if last_lowercase && letter.is_uppercase() {
                acronym.push(letter);
            }

            last_lowercase = letter.is_lowercase();
        }
    }

    acronym
}
fn main() -> std::io::Result<()> {
    let mut entrada = String::new();

    println!("Digite uma frase:");
    std::io::stdin().read_line(&mut entrada)?;

    println!("Acrônimo: {}", abbreviate(&entrada));
    Ok(())
}


*/
