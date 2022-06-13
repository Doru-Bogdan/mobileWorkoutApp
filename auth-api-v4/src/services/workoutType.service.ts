/* eslint-disable @typescript-eslint/no-var-requires */
/* eslint-disable @typescript-eslint/no-unused-vars */
/* eslint-disable @typescript-eslint/no-inferrable-types */
/* eslint-disable no-var */
/* eslint-disable prefer-const */
/* eslint-disable @typescript-eslint/explicit-module-boundary-types */
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Between, MoreThan, LessThan, getConnection, getManager } from 'typeorm';
import { User } from '../entities/user';
import { plainToClass } from 'class-transformer';
import { PasswordService } from './password.service';
import { query } from 'express';
import { CreateUserDto } from 'src/dto/createUser.dto';
import { UpdateUserDto } from 'src/dto/updateUser.dto';
import { WorkoutType } from 'src/entities/WorkoutType';
import { CreateWorkoutTypeDto } from 'src/dto/createWorkoutType.dto';

@Injectable()
export class WorkoutTypeService {
    constructor(
        @InjectRepository(WorkoutType)
        private readonly workoutRepository: Repository<WorkoutType>,

    ) { }


    async getAll(): Promise<WorkoutType[]> {

        let finds = await this.workoutRepository.find();

        return finds;
    }

    async create(workout: CreateWorkoutTypeDto): Promise<WorkoutType> {
        return await this.workoutRepository.save(workout);
    }


}
