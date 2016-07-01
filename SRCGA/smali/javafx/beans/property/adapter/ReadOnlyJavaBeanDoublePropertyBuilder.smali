.class public final Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
.super Ljava/lang/Object;
.source "ReadOnlyJavaBeanDoublePropertyBuilder.java"


# instance fields
.field private final helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;-><init>()V

    iput-object v2, v1, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    return-void
.end method

.method public static create()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bean(Ljava/lang/Object;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->bean(Ljava/lang/Object;)V

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method

.method public beanClass(Ljava/lang/Class;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, p1

    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass(Ljava/lang/Class;)V

    .line 121
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method

.method public build()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoubleProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getDescriptor()Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 83
    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/Number;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Not a double property"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    new-instance v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    invoke-virtual {v5}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getBean()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoubleProperty;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method

.method public getter(Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName(Ljava/lang/String;)V

    .line 133
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method

.method public getter(Ljava/lang/reflect/Method;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/reflect/Method;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter(Ljava/lang/reflect/Method;)V

    .line 145
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method

.method public name(Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->name(Ljava/lang/String;)V

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanDoublePropertyBuilder;
    return-object v0
.end method
