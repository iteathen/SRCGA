.class public Ljavafx/application/Preloader$StateChangeNotification;
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
    name = "StateChangeNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/application/Preloader$StateChangeNotification$Type;
    }
.end annotation


# instance fields
.field private final application:Ljavafx/application/Application;

.field private final notificationType:Ljavafx/application/Preloader$StateChangeNotification$Type;


# direct methods
.method public constructor <init>(Ljavafx/application/Preloader$StateChangeNotification$Type;)V
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$StateChangeNotification;
    move-object v1, p1

    .local v1, "notificationType":Ljavafx/application/Preloader$StateChangeNotification$Type;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 389
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/application/Preloader$StateChangeNotification;->notificationType:Ljavafx/application/Preloader$StateChangeNotification$Type;

    .line 390
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/application/Preloader$StateChangeNotification;->application:Ljavafx/application/Application;

    .line 391
    return-void
.end method

.method public constructor <init>(Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$StateChangeNotification;
    move-object v1, p1

    .local v1, "notificationType":Ljavafx/application/Preloader$StateChangeNotification$Type;
    move-object v2, p2

    .local v2, "application":Ljavafx/application/Application;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 402
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/application/Preloader$StateChangeNotification;->notificationType:Ljavafx/application/Preloader$StateChangeNotification$Type;

    .line 403
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/application/Preloader$StateChangeNotification;->application:Ljavafx/application/Application;

    .line 404
    return-void
.end method


# virtual methods
.method public getApplication()Ljavafx/application/Application;
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$StateChangeNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$StateChangeNotification;->application:Ljavafx/application/Application;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$StateChangeNotification;
    return-object v0
.end method

.method public getType()Ljavafx/application/Preloader$StateChangeNotification$Type;
    .locals 2

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$StateChangeNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$StateChangeNotification;->notificationType:Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$StateChangeNotification;
    return-object v0
.end method
