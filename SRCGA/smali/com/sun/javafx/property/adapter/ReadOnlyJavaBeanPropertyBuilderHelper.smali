.class public Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
.super Ljava/lang/Object;
.source "ReadOnlyJavaBeanPropertyBuilderHelper.java"


# static fields
.field private static final GET_PREFIX:Ljava/lang/String; = "get"

.field private static final IS_PREFIX:Ljava/lang/String; = "is"


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

.field private descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

.field private getter:Ljava/lang/reflect/Method;

.field private getterName:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bean(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->bean:Ljava/lang/Object;

    .line 63
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 64
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 65
    .local v2, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 67
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 71
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 55
    :goto_0
    move-object v2, v1

    invoke-static {v2}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 56
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 59
    :cond_0
    return-void

    .line 54
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    return-object v0
.end method

.method public getDescriptor()Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    if-nez v3, :cond_4

    .line 93
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->bean:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 94
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Bean and property name have to be specified"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Property name cannot be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 100
    .local v1, "capitalizedName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 101
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 102
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    .line 111
    :cond_3
    :goto_0
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 113
    .end local v1    # "capitalizedName":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    return-object v0

    .line 105
    .restart local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    .restart local v1    # "capitalizedName":Ljava/lang/String;
    :cond_5
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 107
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->beanClass:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public getter(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "getter":Ljava/lang/reflect/Method;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 86
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getterName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "getterName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 79
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->getterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public name(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;
    move-object v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 48
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 51
    :cond_0
    return-void

    .line 47
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyJavaBeanPropertyBuilderHelper;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method
