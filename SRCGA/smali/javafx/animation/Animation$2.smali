.class Ljavafx/animation/Animation$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;D)V
    .locals 8

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/Animation;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$2;
    const-string v1, "rate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 13

    .prologue
    .line 301
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation$2;
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v7

    move-wide v2, v7

    .line 302
    .local v2, "newRate":D
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-static {v7}, Ljavafx/animation/Animation;->access$200(Ljavafx/animation/Animation;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 303
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/Animation$2;->isBound()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/animation/Animation$2;->unbind()V

    .line 306
    :cond_0
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-static {v8}, Ljavafx/animation/Animation;->access$300(Ljavafx/animation/Animation;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljavafx/animation/Animation$2;->set(D)V

    .line 307
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Cannot set rate of embedded animation while running."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_1
    move-wide v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v7, v7, v9

    if-gez v7, :cond_4

    .line 310
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_2

    .line 311
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v8}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    .line 312
    invoke-static {v10}, Ljavafx/animation/Animation;->access$300(Ljavafx/animation/Animation;)D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 311
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-static {v7, v8}, Ljavafx/animation/Animation;->access$402(Ljavafx/animation/Animation;Z)Z

    move-result v7

    .line 314
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Ljavafx/animation/Animation;->access$500(Ljavafx/animation/Animation;D)V

    .line 315
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->pauseReceiver()V

    .line 329
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    iget-object v7, v7, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 331
    return-void

    .line 311
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 317
    :cond_4
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v7

    sget-object v8, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v7, v8, :cond_5

    .line 318
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v7

    move-wide v4, v7

    .line 319
    .local v4, "currentRate":D
    move-wide v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v7, v7, v9

    if-gez v7, :cond_7

    .line 320
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move-object v8, v1

    iget-object v8, v8, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-static {v8}, Ljavafx/animation/Animation;->access$400(Ljavafx/animation/Animation;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-wide v8, v2

    :goto_2
    invoke-static {v7, v8, v9}, Ljavafx/animation/Animation;->access$500(Ljavafx/animation/Animation;D)V

    .line 321
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-virtual {v7}, Ljavafx/animation/Animation;->resumeReceiver()V

    .line 327
    .end local v4    # "currentRate":D
    :cond_5
    :goto_3
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move-wide v8, v2

    invoke-static {v7, v8, v9}, Ljavafx/animation/Animation;->access$302(Ljavafx/animation/Animation;D)D

    move-result-wide v7

    goto :goto_1

    .line 320
    .restart local v4    # "currentRate":D
    :cond_6
    move-wide v8, v2

    neg-double v8, v8

    goto :goto_2

    .line 323
    :cond_7
    move-wide v7, v4

    move-object v9, v1

    iget-object v9, v9, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    invoke-static {v9}, Ljavafx/animation/Animation;->access$300(Ljavafx/animation/Animation;)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v7, v7, v9

    if-gez v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 324
    .local v6, "playingForward":Z
    move-object v7, v1

    iget-object v7, v7, Ljavafx/animation/Animation$2;->this$0:Ljavafx/animation/Animation;

    move v8, v6

    if-eqz v8, :cond_9

    move-wide v8, v2

    :goto_5
    invoke-static {v7, v8, v9}, Ljavafx/animation/Animation;->access$500(Ljavafx/animation/Animation;D)V

    goto :goto_3

    .line 323
    .end local v6    # "playingForward":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 324
    .restart local v6    # "playingForward":Z
    :cond_9
    move-wide v8, v2

    neg-double v8, v8

    goto :goto_5
.end method
