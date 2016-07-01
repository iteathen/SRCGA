.class public final Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
.super Ljava/lang/Object;
.source "JavaBeanLongPropertyBuilder.java"


# instance fields
.field private helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;-><init>()V

    iput-object v2, v1, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    return-void
.end method

.method public static create()Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bean(Ljava/lang/Object;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->bean(Ljava/lang/Object;)V

    .line 109
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public beanClass(Ljava/lang/Class;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass(Ljava/lang/Class;)V

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public build()Ljavafx/beans/property/adapter/JavaBeanLongProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getDescriptor()Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 84
    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/Number;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Not a long property"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    new-instance v2, Ljavafx/beans/property/adapter/JavaBeanLongProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    invoke-virtual {v5}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getBean()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/adapter/JavaBeanLongProperty;-><init>(Lcom/sun/javafx/property/adapter/PropertyDescriptor;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public getter(Ljava/lang/String;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName(Ljava/lang/String;)V

    .line 134
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public getter(Ljava/lang/reflect/Method;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/reflect/Method;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getter(Ljava/lang/reflect/Method;)V

    .line 158
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public name(Ljava/lang/String;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->name(Ljava/lang/String;)V

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public setter(Ljava/lang/String;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "setter":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName(Ljava/lang/String;)V

    .line 146
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method

.method public setter(Ljava/lang/reflect/Method;)Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    move-object v1, p1

    .local v1, "setter":Ljava/lang/reflect/Method;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;->helper:Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setter(Ljava/lang/reflect/Method;)V

    .line 170
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanLongPropertyBuilder;
    return-object v0
.end method
