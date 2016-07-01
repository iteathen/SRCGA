.class public final Lcom/sun/javafx/binding/IntegerConstant;
.super Ljava/lang/Object;
.source "IntegerConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableIntegerValue;


# instance fields
.field private final value:I


# direct methods
.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;
    .locals 5

    .prologue
    .line 44
    move v0, p0

    .local v0, "value":I
    new-instance v1, Lcom/sun/javafx/binding/IntegerConstant;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/binding/IntegerConstant;-><init>(I)V

    move-object v0, v1

    .end local v0    # "value":I
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

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-double v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-float v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return v0
.end method

.method public get()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/IntegerConstant;->getValue()Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
    return v0
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/IntegerConstant;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/binding/IntegerConstant;->value:I

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/IntegerConstant;
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
