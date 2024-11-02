import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  const newUser = await prisma.user.create({
    data: {
      name: 'Gael Yannik Gutiérrez Hernández',
      email: 'gaelgutiherdez@gmail.com',
      psw: '301927',
    },
  });
  console.log(newUser);
}

main();
