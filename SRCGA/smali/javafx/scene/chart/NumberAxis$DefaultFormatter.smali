.class public Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
.super Ljavafx/util/StringConverter;
.source "NumberAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/NumberAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultFormatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private formatter:Ljava/text/DecimalFormat;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavafx/scene/chart/NumberAxis;)V
    .locals 8

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "axis":Ljavafx/scene/chart/NumberAxis;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/util/StringConverter;-><init>()V

    .line 497
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    .line 498
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    .line 506
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/NumberAxis;->isAutoRanging()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/text/DecimalFormat;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/chart/NumberAxis;->access$400(Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/property/StringProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v4, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->formatter:Ljava/text/DecimalFormat;

    .line 507
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter$$Lambda$1;->lambdaFactory$(Ljavafx/scene/chart/NumberAxis$DefaultFormatter;Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    move-object v2, v3

    .line 510
    .local v2, "axisListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Object;>;"
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/chart/NumberAxis;->access$400(Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 511
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/chart/NumberAxis;->autoRangingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 512
    return-void

    .line 506
    .end local v2    # "axisListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Object;>;"
    :cond_0
    new-instance v4, Ljava/text/DecimalFormat;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/text/DecimalFormat;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/chart/NumberAxis;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "axis":Ljavafx/scene/chart/NumberAxis;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, p3

    .local v3, "suffix":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;-><init>(Ljavafx/scene/chart/NumberAxis;)V

    .line 523
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    .line 524
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    .line 525
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/chart/NumberAxis$DefaultFormatter;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Number;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->toString(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/chart/NumberAxis$DefaultFormatter;Ljavafx/scene/chart/NumberAxis;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->lambda$new$466(Ljavafx/scene/chart/NumberAxis;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$466(Ljavafx/scene/chart/NumberAxis;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "axis":Ljavafx/scene/chart/NumberAxis;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "newValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/NumberAxis;->isAutoRanging()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/text/DecimalFormat;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-static {v8}, Ljavafx/scene/chart/NumberAxis;->access$400(Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/property/StringProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v6, v5, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->formatter:Ljava/text/DecimalFormat;

    .line 509
    return-void

    .line 508
    :cond_0
    new-instance v6, Ljava/text/DecimalFormat;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/text/DecimalFormat;-><init>()V

    goto :goto_0
.end method

.method private toString(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Number;
    move-object v2, p2

    .local v2, "numFormatter":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->formatter:Ljava/text/DecimalFormat;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->toString(Ljava/lang/Number;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 541
    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/text/DecimalFormat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->toString(Ljava/lang/Number;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private toString(Ljava/lang/Number;Ljava/text/DecimalFormat;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Number;
    move-object v2, p2

    .local v2, "formatter":Ljava/text/DecimalFormat;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 553
    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    :goto_0
    return-object v0

    .line 548
    .restart local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 550
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 553
    :cond_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 566
    .local v2, "prefixLength":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 567
    .local v3, "suffixLength":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->formatter:Ljava/text/DecimalFormat;

    move-object v5, v1

    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    move-object v0, v4

    .line 569
    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    .end local v2    # "prefixLength":I
    .end local v3    # "suffixLength":I
    :goto_2
    return-object v0

    .line 565
    .restart local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 566
    .restart local v2    # "prefixLength":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->suffix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 568
    .end local v2    # "prefixLength":I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 569
    .local v2, "e":Ljava/text/ParseException;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_2
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->fromString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    return-object v0
.end method

.method public toString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Number;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->formatter:Ljava/text/DecimalFormat;

    invoke-direct {v2, v3, v4}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->toString(Ljava/lang/Number;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->toString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis$DefaultFormatter;
    return-object v0
.end method
