import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from '../entities/user';
import { UserController } from '../controllers/user.controller';
import { UserService } from '../services/user.service';
import { PasswordService } from '../services/password.service';
import { ResponseFactory } from '../factories/ResponseFactory';
import { QueryParamsFilterFactory } from 'src/factories/QueryParamsFilter.factory';


@Module({
    imports: [
        TypeOrmModule.forFeature([
            User,
        ]),

    ],
    exports: [TypeOrmModule],
    providers: [
        UserService,
        PasswordService,
        ResponseFactory,
        QueryParamsFilterFactory
    ],
    controllers: [UserController]
})
export class UserModule { }
