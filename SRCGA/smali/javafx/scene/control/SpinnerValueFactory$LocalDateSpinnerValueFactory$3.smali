.class Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v1, v3

    .line 1003
    .local v1, "currentValue":Ljava/time/LocalDate;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1004
    .line 1016
    :goto_0
    return-void

    .line 1007
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v2, v3

    .line 1008
    .local v2, "newMax":Ljava/time/LocalDate;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setMax(Ljava/time/LocalDate;)V

    .line 1010
    goto :goto_0

    .line 1013
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1014
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1016
    :cond_2
    goto :goto_0
.end method
