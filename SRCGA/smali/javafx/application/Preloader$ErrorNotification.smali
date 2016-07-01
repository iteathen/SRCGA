.class public Ljavafx/application/Preloader$ErrorNotification;
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
    name = "ErrorNotification"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private details:Ljava/lang/String;

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ErrorNotification;
    move-object v1, p1

    .local v1, "location":Ljava/lang/String;
    move-object v2, p2

    .local v2, "details":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cause":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 223
    move-object v4, v0

    const-string v5, ""

    iput-object v5, v4, Ljavafx/application/Preloader$ErrorNotification;->details:Ljava/lang/String;

    .line 234
    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 236
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/application/Preloader$ErrorNotification;->location:Ljava/lang/String;

    .line 237
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/application/Preloader$ErrorNotification;->details:Ljava/lang/String;

    .line 238
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/application/Preloader$ErrorNotification;->cause:Ljava/lang/Throwable;

    .line 239
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ErrorNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$ErrorNotification;->cause:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$ErrorNotification;
    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ErrorNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$ErrorNotification;->details:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$ErrorNotification;
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ErrorNotification;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/application/Preloader$ErrorNotification;->location:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Preloader$ErrorNotification;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader$ErrorNotification;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Preloader.ErrorNotification: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 279
    .local v1, "str":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/application/Preloader$ErrorNotification;->details:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 280
    move-object v2, v0

    iget-object v2, v2, Ljavafx/application/Preloader$ErrorNotification;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 281
    move-object v2, v1

    # getter for: Ljavafx/application/Preloader;->lineSeparator:Ljava/lang/String;
    invoke-static {}, Ljavafx/application/Preloader;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Caused by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/application/Preloader$ErrorNotification;->cause:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/application/Preloader$ErrorNotification;->location:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 284
    move-object v2, v1

    # getter for: Ljavafx/application/Preloader;->lineSeparator:Ljava/lang/String;
    invoke-static {}, Ljavafx/application/Preloader;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/application/Preloader$ErrorNotification;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/application/Preloader$ErrorNotification;
    return-object v0
.end method
