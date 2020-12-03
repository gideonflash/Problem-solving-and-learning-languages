use rand::Rng;
use std::io;

fn main() -> io::Result<()> {
    let mut name = String::new();
    let greetings = vec!["yo what up", "sup gee", "hows is going"];

    let mut rng = rand::thread_rng();
    let pick = rng.gen_range(0, greetings.len());

    io::stdin().read_line(&mut name)?;

    println!("{}! {}", greetings[pick], name.trim());
    Ok(())
}
