.class Ljavafx/animation/ScaleTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ScaleTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/ScaleTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/ScaleTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ScaleTransition;Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ScaleTransition$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/ScaleTransition;
    move-object v2, p2

    .local v2, "x0":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ScaleTransition$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/ScaleTransition$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ScaleTransition$1;
    const-string v1, "duration"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/ScaleTransition$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ScaleTransition$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    invoke-virtual {v3}, Ljavafx/animation/ScaleTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/ScaleTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    return-void

    .line 167
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 168
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/ScaleTransition$1;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/ScaleTransition$1;->unbind()V

    .line 171
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/ScaleTransition$1;->this$0:Ljavafx/animation/ScaleTransition;

    invoke-virtual {v3}, Ljavafx/animation/ScaleTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/ScaleTransition$1;->set(Ljava/lang/Object;)V

    .line 172
    move-object v2, v1

    throw v2
.end method
