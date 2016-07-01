.class public final Lcom/sun/javafx/binding/LongConstant;
.super Ljava/lang/Object;
.source "LongConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableLongValue;


# instance fields
.field private final value:J


# direct methods
.method private constructor <init>(J)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/LongConstant;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/binding/LongConstant;->value:J

    .line 41
    return-void
.end method

.method public static valueOf(J)Lcom/sun/javafx/binding/LongConstant;
    .locals 8

    .prologue
    .line 44
    move-wide v0, p0

    .local v0, "value":J
    new-instance v2, Lcom/sun/javafx/binding/LongConstant;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/LongConstant;-><init>(J)V

    move-object v0, v2

    .end local v0    # "value":J
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
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    return-void
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/LongConstant;->value:J

    long-to-double v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/LongConstant;
    return-wide v1
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/LongConstant;->value:J

    long-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/LongConstant;
    return v1
.end method

.method public get()J
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/binding/LongConstant;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/LongConstant;
    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/LongConstant;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/LongConstant;
    return-object v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/LongConstant;->getValue()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/LongConstant;
    return-object v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/binding/LongConstant;->value:J

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/binding/LongConstant;
    return v1
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/LongConstant;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/binding/LongConstant;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/LongConstant;
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
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    return-void
.end method
