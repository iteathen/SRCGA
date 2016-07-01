.class public final Lcom/sun/javafx/binding/FloatConstant;
.super Ljava/lang/Object;
.source "FloatConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableFloatValue;


# instance fields
.field private final value:F


# direct methods
.method private constructor <init>(F)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move v1, p1

    .local v1, "value":F
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/binding/FloatConstant;->value:F

    .line 41
    return-void
.end method

.method public static valueOf(F)Lcom/sun/javafx/binding/FloatConstant;
    .locals 5

    .prologue
    .line 44
    move v0, p0

    .local v0, "value":F
    new-instance v1, Lcom/sun/javafx/binding/FloatConstant;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/binding/FloatConstant;-><init>(F)V

    move-object v0, v1

    .end local v0    # "value":F
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

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-double v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return v0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/FloatConstant;->getValue()Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return v0
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/FloatConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/FloatConstant;->value:F

    float-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/FloatConstant;
    return-wide v0
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
