.class public final Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
.super Ljava/lang/Object;
.source "ReadOnlyJavaBeanObjectPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;-><init>()V

    iput-object v2, v1, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    return-void
.end method

.method public static create()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bean(Ljava/lang/Object;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->bean(Ljava/lang/Object;)V

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method

.method public beanClass(Ljava/lang/Class;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass(Ljava/lang/Class;)V

    .line 118
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method

.method public build()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getDescriptor()Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 83
    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    new-instance v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    invoke-virtual {v5}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getBean()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method

.method public getter(Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "getter":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName(Ljava/lang/String;)V

    .line 130
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method

.method public getter(Ljava/lang/reflect/Method;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "getter":Ljava/lang/reflect/Method;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter(Ljava/lang/reflect/Method;)V

    .line 142
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method

.method public name(Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->name(Ljava/lang/String;)V

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder<TT;>;"
    return-object v0
.end method
