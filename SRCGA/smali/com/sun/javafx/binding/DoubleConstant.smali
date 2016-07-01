.class public final Lcom/sun/javafx/binding/DoubleConstant;
.super Ljava/lang/Object;
.source "DoubleConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableDoubleValue;


# instance fields
.field private final value:D


# direct methods
.method private constructor <init>(D)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    .line 41
    return-void
.end method

.method public static valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;
    .locals 8

    .prologue
    .line 44
    move-wide v0, p0

    .local v0, "value":D
    new-instance v2, Lcom/sun/javafx/binding/DoubleConstant;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;-><init>(D)V

    move-object v0, v2

    .end local v0    # "value":D
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 60
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    return-void
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return-wide v0
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return v1
.end method

.method public get()D
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return-wide v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return-object v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/DoubleConstant;->getValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return-object v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return v1
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/DoubleConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/DoubleConstant;->value:D

    double-to-long v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/DoubleConstant;
    return-wide v1
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 70
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    return-void
.end method
