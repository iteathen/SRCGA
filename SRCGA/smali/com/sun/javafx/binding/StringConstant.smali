.class public Lcom/sun/javafx/binding/StringConstant;
.super Ljavafx/beans/binding/StringExpression;
.source "StringConstant.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringConstant;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/StringExpression;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/sun/javafx/binding/StringConstant;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/binding/StringConstant;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 57
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/StringConstant;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringConstant;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringConstant;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringConstant;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringConstant;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/StringConstant;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringConstant;
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringConstant;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/StringConstant;->value:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringConstant;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 67
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    return-void
.end method
