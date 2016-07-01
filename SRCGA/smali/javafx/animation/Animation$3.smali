.class Ljavafx/animation/Animation$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/Animation;
    move-object v2, p2

    .local v2, "x0":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/animation/Animation$3;->this$0:Ljavafx/animation/Animation;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$3;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$3;
    const-string v1, "delay"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$3;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation$3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/util/Duration;

    move-object v1, v2

    .line 542
    .local v1, "newDuration":Ljavafx/util/Duration;
    move-object v2, v1

    sget-object v3, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation$3;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation$3;->unbind()V

    .line 546
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/animation/Animation$3;->set(Ljava/lang/Object;)V

    .line 547
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set delay to negative value. Setting to Duration.ZERO"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_1
    return-void
.end method
