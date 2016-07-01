.class Ljavafx/animation/ParallelTransition$1;
.super Ljava/lang/Object;
.source "ParallelTransition.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/ParallelTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/ParallelTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/ParallelTransition;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/ParallelTransition;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 129
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v7}, Ljavafx/animation/ParallelTransition;->access$000(Ljavafx/animation/ParallelTransition;)[Ljavafx/animation/Animation;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 130
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v6}, Ljavafx/animation/ParallelTransition;->access$000(Ljavafx/animation/ParallelTransition;)[Ljavafx/animation/Animation;

    move-result-object v6

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 131
    .local v5, "child":Ljavafx/animation/Animation;
    move-object v6, v5

    iget-object v6, v6, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-static {v7}, Ljavafx/animation/ParallelTransition;->access$100(Ljavafx/animation/ParallelTransition;)[D

    move-result-object v7

    move v8, v4

    aget-wide v7, v7, v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    invoke-virtual {v9}, Ljavafx/animation/ParallelTransition;->getCurrentRate()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v5    # "child":Ljavafx/animation/Animation;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/ParallelTransition$1;->this$0:Ljavafx/animation/ParallelTransition;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljavafx/animation/ParallelTransition;->access$202(Ljavafx/animation/ParallelTransition;Z)Z

    move-result v6

    .line 135
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/ParallelTransition$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/animation/ParallelTransition$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method
