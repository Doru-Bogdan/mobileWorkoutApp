import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from '../entities/user';
import { UserController } from '../controllers/user.controller';
import { UserService } from '../services/user.service';
import { PasswordService } from '../services/password.service';
import { ResponseFactory } from '../factories/ResponseFactory';
import { QueryParamsFilterFactory } from 'src/factories/QueryParamsFilter.factory';
import { WorkoutType } from 'src/entities/WorkoutType';
import { WorkoutTypeService } from 'src/services/workoutType.service';
import { WorkoutTypeController } from 'src/controllers/workoutType.controller';
import { Workout } from 'src/entities/Workout';
import { WorkoutService } from 'src/services/workout.service';
import { WorkoutController } from 'src/controllers/workout.controller';


@Module({
    imports: [
        TypeOrmModule.forFeature([
            Workout,
        ]),

    ],
    exports: [TypeOrmModule],
    providers: [
        WorkoutService,
        PasswordService,
        ResponseFactory,
        QueryParamsFilterFactory
    ],
    controllers: [WorkoutController]
})
export class WorkoutModule { }
