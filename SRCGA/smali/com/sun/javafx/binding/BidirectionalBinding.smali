.class public abstract Lcom/sun/javafx/binding/BidirectionalBinding;
.super Ljava/lang/Object;
.source "BidirectionalBinding.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;,
        Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<TT;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final cachedHashCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "property1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "property2":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 180
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding;->cachedHashCode:I

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/BidirectionalBinding$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/property/DoubleProperty;

    if-eqz v3, :cond_0

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/property/DoubleProperty;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Ljavafx/beans/property/DoubleProperty;

    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/DoubleProperty;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalDoubleBinding;-><init>(Ljavafx/beans/property/DoubleProperty;Ljavafx/beans/property/DoubleProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    :goto_0
    move-object v2, v3

    .line 64
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 65
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 66
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 67
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    return-object v0

    .line 52
    .end local v2    # "binding":Lcom/sun/javafx/binding/BidirectionalBinding;
    .restart local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/property/FloatProperty;

    if-eqz v3, :cond_1

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/property/FloatProperty;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Ljavafx/beans/property/FloatProperty;

    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/FloatProperty;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalFloatBinding;-><init>(Ljavafx/beans/property/FloatProperty;Ljavafx/beans/property/FloatProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/property/IntegerProperty;

    if-eqz v3, :cond_2

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/property/IntegerProperty;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Ljavafx/beans/property/IntegerProperty;

    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/IntegerProperty;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;-><init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/property/LongProperty;

    if-eqz v3, :cond_3

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/property/LongProperty;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Ljavafx/beans/property/LongProperty;

    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/LongProperty;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalLongBinding;-><init>(Ljavafx/beans/property/LongProperty;Ljavafx/beans/property/LongProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/property/BooleanProperty;

    if-eqz v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/property/BooleanProperty;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Ljavafx/beans/property/BooleanProperty;

    move-object v6, v1

    check-cast v6, Ljavafx/beans/property/BooleanProperty;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalBooleanBinding;-><init>(Ljavafx/beans/property/BooleanProperty;Ljavafx/beans/property/BooleanProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedGenericBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    goto/16 :goto_0
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<*>;",
            "Ljava/text/Format;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<*>;"
    move-object v2, p2

    .local v2, "format":Ljava/text/Format;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    move-object v4, v2

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Format cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    new-instance v4, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/BidirectionalBinding$StringFormatBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V

    move-object v3, v4

    .line 76
    .local v3, "binding":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<*>;"
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 77
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 78
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 79
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    move-object v4, v2

    if-nez v4, :cond_0

    .line 85
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Converter cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    new-instance v4, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConverterBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V

    move-object v3, v4

    .line 88
    .local v3, "binding":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v6}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 89
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 90
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 91
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/DoubleProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/DoubleProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/DoubleProperty;
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Double;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/DoubleProperty;
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/FloatProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/FloatProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/FloatProperty;
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Float;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/FloatProperty;
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/IntegerProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/IntegerProperty;
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Integer;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/IntegerProperty;
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/LongProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/LongProperty;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/LongProperty;
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Long;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/LongProperty;
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/DoubleProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljavafx/beans/property/DoubleProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Double;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/DoubleProperty;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Double;>;"
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/FloatProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljavafx/beans/property/FloatProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Float;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/FloatProperty;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Float;>;"
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/IntegerProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavafx/beans/property/IntegerProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Integer;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/IntegerProperty;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/LongProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljavafx/beans/property/LongProperty;",
            ")",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Long;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/LongProperty;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Long;>;"
    return-object v0
.end method

.method private static bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    move-object v2, v3

    .line 160
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<Ljava/lang/Number;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 161
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 162
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 163
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    return-object v0
.end method

.method private static bindNumberObject(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)",
            "Lcom/sun/javafx/binding/BidirectionalBinding;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$TypedNumberBidirectionalBinding;-><init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    move-object v2, v3

    .line 149
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<Ljava/lang/Number;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V

    .line 150
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 151
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 152
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    return-object v0
.end method

.method private static checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "property1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property2":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Both properties must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_1
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_2

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot bind property to itself"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_2
    return-void
.end method

.method public static unbind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "property1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property2":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 104
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableValue;

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v0

    check-cast v3, Ljavafx/beans/value/ObservableValue;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 107
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/Observable;

    if-eqz v3, :cond_1

    .line 108
    move-object v3, v1

    check-cast v3, Ljavafx/beans/value/ObservableValue;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 110
    :cond_1
    return-void
.end method

.method public static unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 97
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 98
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 99
    return-void
.end method

.method public static unbindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/BidirectionalBinding;->checkParameters(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    new-instance v3, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$UntypedGenericBidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 169
    .local v2, "binding":Lcom/sun/javafx/binding/BidirectionalBinding;
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableValue;

    if-eqz v3, :cond_0

    .line 170
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 172
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/Observable;

    if-eqz v3, :cond_1

    .line 173
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 200
    const/4 v7, 0x1

    move v0, v7

    .line 224
    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    :goto_0
    return v0

    .line 203
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 204
    .local v2, "propertyA1":Ljava/lang/Object;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 205
    .local v3, "propertyA2":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v3

    if-nez v7, :cond_2

    .line 206
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 209
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/binding/BidirectionalBinding;

    if-eqz v7, :cond_6

    .line 210
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/binding/BidirectionalBinding;

    move-object v4, v7

    .line 211
    .local v4, "otherBinding":Lcom/sun/javafx/binding/BidirectionalBinding;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 212
    .local v5, "propertyB1":Ljava/lang/Object;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 213
    .local v6, "propertyB2":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v6

    if-nez v7, :cond_4

    .line 214
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 217
    :cond_4
    move-object v7, v2

    move-object v8, v5

    if-ne v7, v8, :cond_5

    move-object v7, v3

    move-object v8, v6

    if-ne v7, v8, :cond_5

    .line 218
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 220
    :cond_5
    move-object v7, v2

    move-object v8, v6

    if-ne v7, v8, :cond_6

    move-object v7, v3

    move-object v8, v5

    if-ne v7, v8, :cond_6

    .line 221
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 224
    .end local v4    # "otherBinding":Lcom/sun/javafx/binding/BidirectionalBinding;
    .end local v5    # "propertyB1":Ljava/lang/Object;
    .end local v6    # "propertyB2":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method protected abstract getProperty1()Ljava/lang/Object;
.end method

.method protected abstract getProperty2()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/BidirectionalBinding;->cachedHashCode:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    return v0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty1()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/BidirectionalBinding;->getProperty2()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding<TT;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
