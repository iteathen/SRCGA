.class public Lcom/sun/javafx/binding/ObjectConstant;
.super Ljava/lang/Object;
.source "ObjectConstant.java"

# interfaces
.implements Ljavafx/beans/value/ObservableObjectValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableObjectValue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sun/javafx/binding/ObjectConstant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Lcom/sun/javafx/binding/ObjectConstant;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/binding/ObjectConstant;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 57
    .local p0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/ObjectConstant;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "observer"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 67
    .local p0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/sun/javafx/binding/ObjectConstant;, "Lcom/sun/javafx/binding/ObjectConstant<TT;>;"
    .local p1, "observer":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    return-void
.end method
