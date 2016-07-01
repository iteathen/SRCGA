.class Ljavafx/animation/TranslateTransition$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TranslateTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/TranslateTransition;->durationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/animation/TranslateTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/TranslateTransition;Ljavafx/util/Duration;)V
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/TranslateTransition;
    move-object v2, p2

    .local v2, "x0":Ljavafx/util/Duration;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition$1;
    const-string v1, "duration"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransition$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransition$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    invoke-virtual {v3}, Ljavafx/animation/TranslateTransition;->getDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/TranslateTransition;->setCycleDuration(Ljavafx/util/Duration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    return-void

    .line 165
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 166
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition$1;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/TranslateTransition$1;->unbind()V

    .line 169
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/TranslateTransition$1;->this$0:Ljavafx/animation/TranslateTransition;

    invoke-virtual {v3}, Ljavafx/animation/TranslateTransition;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/animation/TranslateTransition$1;->set(Ljava/lang/Object;)V

    .line 170
    move-object v2, v1

    throw v2
.end method
