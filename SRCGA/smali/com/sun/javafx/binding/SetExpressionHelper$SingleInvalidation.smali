.class Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/SetExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 128
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v1, v2}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 164
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v2, v3}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 169
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method
