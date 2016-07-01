.class Ljavafx/animation/SequentialTransition$1;
.super Ljava/lang/Object;
.source "SequentialTransition.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/SequentialTransition;
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
.field final synthetic this$0:Ljavafx/animation/SequentialTransition;


# direct methods
.method constructor <init>(Ljavafx/animation/SequentialTransition;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/SequentialTransition;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

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
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition$1;
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

    .line 136
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-static {v7}, Ljavafx/animation/SequentialTransition;->access$000(Ljavafx/animation/SequentialTransition;)[Ljavafx/animation/Animation;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 137
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-static {v6}, Ljavafx/animation/SequentialTransition;->access$000(Ljavafx/animation/SequentialTransition;)[Ljavafx/animation/Animation;

    move-result-object v6

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 138
    .local v5, "child":Ljavafx/animation/Animation;
    move-object v6, v5

    iget-object v6, v6, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-static {v7}, Ljavafx/animation/SequentialTransition;->access$100(Ljavafx/animation/SequentialTransition;)[D

    move-result-object v7

    move v8, v4

    aget-wide v7, v7, v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

    invoke-virtual {v9}, Ljavafx/animation/SequentialTransition;->getCurrentRate()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setRate(D)V

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v5    # "child":Ljavafx/animation/Animation;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/animation/SequentialTransition$1;->this$0:Ljavafx/animation/SequentialTransition;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljavafx/animation/SequentialTransition;->access$202(Ljavafx/animation/SequentialTransition;Z)Z

    move-result v6

    .line 142
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/SequentialTransition$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/animation/SequentialTransition$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method
