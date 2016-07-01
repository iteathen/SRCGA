.class Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;
.super Ljavafx/beans/property/SimpleIntegerProperty;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    .line 488
    .local v1, "currentValue":Ljava/lang/Integer;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 489
    .line 501
    :goto_0
    return-void

    .line 492
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->get()I

    move-result v3

    move v2, v3

    .line 493
    .local v2, "newMin":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 494
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setMin(I)V

    .line 495
    goto :goto_0

    .line 498
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v2

    if-ge v3, v4, :cond_2

    .line 499
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 501
    :cond_2
    goto :goto_0
.end method
