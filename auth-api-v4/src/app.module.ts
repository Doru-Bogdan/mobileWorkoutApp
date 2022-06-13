import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './modules/auth.module';
import { UserModule } from './modules/user.module';
import { WorkoutModule } from './modules/workout.module';
import { WorkoutTypeModule } from './modules/workoutType.module';
import { PasswordService } from './services/password.service';
import { UserService } from './services/user.service';
import { WorkoutService } from './services/workout.service';
import { WorkoutTypeService } from './services/workoutType.service';

@Module({
  imports: [
    TypeOrmModule.forRoot({ keepConnectionAlive: true }),
    UserModule,
    AuthModule,
    WorkoutTypeModule,
    WorkoutModule

  ],
  controllers: [AppController],
  providers: [
    AppService, 
    UserService,
    PasswordService,
    WorkoutTypeService,
    WorkoutService
  ],
})

export class AppModule {}
