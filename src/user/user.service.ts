import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class UserService {
  constructor(private readonly Prisma: PrismaService) {}
  async getAllUsers() {
    return this.Prisma.user.findMany();
  }
}
