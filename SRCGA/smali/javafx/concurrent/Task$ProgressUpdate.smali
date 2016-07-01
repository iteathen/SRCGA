.class final Ljavafx/concurrent/Task$ProgressUpdate;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/concurrent/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressUpdate"
.end annotation


# instance fields
.field private final totalWork:D

.field private final workDone:D


# direct methods
.method private constructor <init>(DD)V
    .locals 9

    .prologue
    .line 1376
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$ProgressUpdate;
    move-wide v1, p1

    .local v1, "p":D
    move-wide v3, p3

    .local v3, "m":D
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1377
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/concurrent/Task$ProgressUpdate;->workDone:D

    .line 1378
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/concurrent/Task$ProgressUpdate;->totalWork:D

    .line 1379
    return-void
.end method

.method synthetic constructor <init>(DDLjavafx/concurrent/Task$1;)V
    .locals 13

    .prologue
    .line 1372
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/Task$ProgressUpdate;
    move-wide v2, p1

    .local v2, "x0":D
    move-wide/from16 v4, p3

    .local v4, "x1":D
    move-object/from16 v6, p5

    .local v6, "x2":Ljavafx/concurrent/Task$1;
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/concurrent/Task$ProgressUpdate;-><init>(DD)V

    return-void
.end method

.method static synthetic access$1000(Ljavafx/concurrent/Task$ProgressUpdate;)D
    .locals 3

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task$ProgressUpdate;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/concurrent/Task$ProgressUpdate;->totalWork:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task$ProgressUpdate;
    return-wide v0
.end method

.method static synthetic access$900(Ljavafx/concurrent/Task$ProgressUpdate;)D
    .locals 3

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task$ProgressUpdate;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/concurrent/Task$ProgressUpdate;->workDone:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task$ProgressUpdate;
    return-wide v0
.end method
