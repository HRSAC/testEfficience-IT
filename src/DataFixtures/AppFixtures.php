<?php
namespace App\DataFixtures;


use App\Entity\Contacte;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Faker\Generator;
class AppFixtures extends Fixture
{

    /**
     * @var Generator
     */
    private Generator $faker;
    public function __construct()
    {
        $this->faker = Factory::create('fr_FR');
    }

    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);

        
        for ($i=0; $i < 5 ; $i++) {

            $contact = new Contacte();
            $contact->setFullName($this->faker->name())
                ->setEamil($this->faker->email())
                ->setMessage($this->faker->text())
                ->setDepartement('Departement n'.($i+1));

                $manager->persist($contact);
        }
      
        

        $manager->flush();
    }
}
