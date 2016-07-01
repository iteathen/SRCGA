.class Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-object v1, v4

    .line 779
    .local v1, "currentValue":Ljava/lang/Double;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 780
    .line 792
    :goto_0
    return-void

    .line 783
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->get()D

    move-result-wide v4

    move-wide v2, v4

    .line 784
    .local v2, "newMax":D
    move-wide v4, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 785
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setMax(D)V

    .line 786
    goto :goto_0

    .line 789
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 790
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 792
    :cond_2
    goto :goto_0
.end method
