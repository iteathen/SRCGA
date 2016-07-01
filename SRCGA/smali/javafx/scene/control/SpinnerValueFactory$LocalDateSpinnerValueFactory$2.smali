.class Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;
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
    .line 967
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

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
    .line 969
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v1, v3

    .line 970
    .local v1, "currentValue":Ljava/time/LocalDate;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 971
    .line 983
    :goto_0
    return-void

    .line 974
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    move-object v2, v3

    .line 975
    .local v2, "newMin":Ljava/time/LocalDate;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setMin(Ljava/time/LocalDate;)V

    .line 977
    goto :goto_0

    .line 980
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 983
    :cond_2
    goto :goto_0
.end method
