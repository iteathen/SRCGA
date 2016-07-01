.class public Ljavafx/application/Preloader$ProgressNotification;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljavafx/application/Preloader$PreloaderNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/application/Preloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressNotification"
.end annotation


# instance fields
.field private final details:Ljava/lang/String;

.field private final progress:D


# direct methods
.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ProgressNotification;
    move-wide v1, p1

    .local v1, "progress":D
    move-object v3, v0

    move-wide v4, v1

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljavafx/application/Preloader$ProgressNotification;-><init>(DLjava/lang/String;)V

    .line 309
    return-void
.end method

.method private constructor <init>(DLjava/lang/String;)V
    .locals 9

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Ljavafx/application/Preloader$ProgressNotification;
    move-wide v2, p1

    .local v2, "progress":D
    move-object v4, p3

    .local v4, "details":Ljava/lang/String;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 324
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljavafx/application/Preloader$ProgressNotification;->progress:D

    .line 325
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Ljavafx/application/Preloader$ProgressNotification;->details:Ljava/lang/String;

    .line 326
    return-void
.end method

.method private getDetails()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ProgressNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$ProgressNotification;->details:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$ProgressNotification;
    return-object v0
.end method


# virtual methods
.method public getProgress()D
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ProgressNotification;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/application/Preloader$ProgressNotification;->progress:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$ProgressNotification;
    return-wide v0
.end method
