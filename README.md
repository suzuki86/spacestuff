# Spacestuff

Generate fantastic image.

![Smaple](https://raw.githubusercontent.com/suzuki86/spacestuff/assets/sample.jpg)

## Dependencies

- RMagick

## Installation

Clone repository to your local machine.

```
git clone https://github.com/suzuki86/spacestuff.git
```

Move to cloned repository.

```
cd spacestuff
```

Build gem.

```
gem build spacestuff.gemspec
```

Install gem.

```
gem install spacestuff-x.x.x.gem
```

## Usage

Execute `spacestuff` command.

```
spacestuff
```

`result.jpg` will be generated in current directory.

### Command line options

#### Specifying category

Category can be specified by passing command line argument like below.

```
spacestuff -c sushi
```

For now, you can specify category as follows.

- sushi
- mashroom

#### Specifying background

Background image can be specified by passing command line argument like below.

```
spacestuff -b your_own_background.png
```

#### Specifying stuff

Stuff image can be specified by passing command line argument like below.

```
spacestuff -s your_own_stuff.png
```

#### Specifying output filename

Output filename can be specified by passing command line argument like below.

```
spacestuff -o your_own_filename.jpg
```

## Resources

### Backgrounds

- http://www.publicdomainpictures.net/view-image.php?image=86441
- http://www.publicdomainpictures.net/view-image.php?image=86458
- http://www.publicdomainpictures.net/view-image.php?image=86462
- http://www.publicdomainpictures.net/view-image.php?image=86463
- http://www.publicdomainpictures.net/view-image.php?image=44287

### Stuff

#### Mashroom

- http://www.publicdomainpictures.net/view-image.php?image=17944

