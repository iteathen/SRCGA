.class Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
.super Ljavafx/util/StringConverter;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;-><init>(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final df:Ljava/text/DecimalFormat;

.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;)V
    .locals 7

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/util/StringConverter;-><init>()V

    .line 690
    move-object v2, v0

    new-instance v3, Ljava/text/DecimalFormat;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "#.##"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->df:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 704
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    move-object v2, p1

    .local v2, "value":Ljava/lang/String;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 705
    const/4 v4, 0x0

    move-object v1, v4

    .line 715
    .end local v1    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    :goto_0
    return-object v1

    .line 708
    .restart local v1    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    :cond_0
    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 710
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 711
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    .line 715
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->df:Ljava/text/DecimalFormat;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 716
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 717
    .local v3, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->fromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    return-object v0
.end method

.method public toString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Double;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 695
    const-string v2, ""

    move-object v0, v2

    .line 698
    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->df:Ljava/text/DecimalFormat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;->toString(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;
    return-object v0
.end method
