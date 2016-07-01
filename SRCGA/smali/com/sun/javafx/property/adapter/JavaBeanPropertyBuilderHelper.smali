.class public Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
.super Ljava/lang/Object;
.source "JavaBeanPropertyBuilderHelper.java"


# static fields
.field private static final GET_PREFIX:Ljava/lang/String; = "get"

.field private static final IS_PREFIX:Ljava/lang/String; = "is"

.field private static final SET_PREFIX:Ljava/lang/String; = "set"


# instance fields
.field private bean:Ljava/lang/Object;

.field private beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

.field private getter:Ljava/lang/reflect/Method;

.field private getterName:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;

.field private setter:Ljava/lang/reflect/Method;

.field private setterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bean(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->bean:Ljava/lang/Object;

    .line 66
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 67
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 68
    .local v2, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 70
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 74
    .end local v2    # "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public beanClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 58
    :goto_0
    move-object v2, v1

    invoke-static {v2}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 62
    :cond_0
    return-void

    .line 57
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    return-object v0
.end method

.method public getDescriptor()Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    if-nez v5, :cond_4

    .line 110
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 111
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "Property name has to be specified"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "Property name cannot be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-static {v5}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 117
    .local v1, "capitalizedName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    move-object v2, v5

    .line 118
    .local v2, "getterMethod":Ljava/lang/reflect/Method;
    move-object v5, v2

    if-nez v5, :cond_2

    .line 119
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 120
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 129
    :cond_2
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setter:Ljava/lang/reflect/Method;

    move-object v3, v5

    .line 130
    .local v3, "setterMethod":Ljava/lang/reflect/Method;
    move-object v5, v3

    if-nez v5, :cond_3

    .line 131
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 132
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 138
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    iput-object v6, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 140
    .end local v1    # "capitalizedName":Ljava/lang/String;
    .end local v2    # "getterMethod":Ljava/lang/reflect/Method;
    .end local v3    # "setterMethod":Ljava/lang/reflect/Method;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    return-object v0

    .line 123
    .restart local v0    # "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    .restart local v1    # "capitalizedName":Ljava/lang/String;
    .restart local v2    # "getterMethod":Ljava/lang/reflect/Method;
    :cond_5
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 125
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    goto/16 :goto_0

    .line 135
    .local v3, "setterMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_1
.end method

.method public getter(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/reflect/Method;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 96
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    .line 97
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 99
    :cond_0
    return-void

    .line 95
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getterName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "getterName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 82
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 85
    :cond_0
    return-void

    .line 81
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public name(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 54
    :cond_0
    return-void

    .line 50
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public setter(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "setter":Ljava/lang/reflect/Method;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setter:Ljava/lang/reflect/Method;

    .line 104
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 106
    :cond_0
    return-void

    .line 102
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public setterName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "setterName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 92
    :cond_0
    return-void

    .line 88
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/JavaBeanPropertyBuilderHelper;->setterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method
