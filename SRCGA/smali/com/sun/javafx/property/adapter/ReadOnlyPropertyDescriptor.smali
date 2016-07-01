.class public Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
.super Ljava/lang/Object;
.source "ReadOnlyPropertyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER_METHOD_NAME:Ljava/lang/String; = "addPropertyChangeListener"

.field private static final ADD_LISTENER_TAKES_NAME:I = 0x1

.field private static final ADD_PREFIX:Ljava/lang/String; = "add"

.field private static final REMOVE_LISTENER_METHOD_NAME:Ljava/lang/String; = "removePropertyChangeListener"

.field private static final REMOVE_LISTENER_TAKES_NAME:I = 0x2

.field private static final REMOVE_PREFIX:Ljava/lang/String; = "remove"

.field private static final SUFFIX:Ljava/lang/String; = "Listener"


# instance fields
.field private final addChangeListener:Ljava/lang/reflect/Method;

.field protected final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final flags:I

.field private final getter:Ljava/lang/reflect/Method;

.field protected final name:Ljava/lang/String;

.field private final removeChangeListener:Ljava/lang/reflect/Method;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object/from16 v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v3, p3

    .local v3, "getter":Ljava/lang/reflect/Method;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v10, v2

    invoke-static {v10}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 70
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    .line 71
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->beanClass:Ljava/lang/Class;

    .line 72
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    .line 73
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->type:Ljava/lang/Class;

    .line 75
    const/4 v10, 0x0

    move-object v4, v10

    .line 76
    .local v4, "tmpAddChangeListener":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    move-object v5, v10

    .line 77
    .local v5, "tmpRemoveChangeListener":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    move v6, v10

    .line 80
    .local v6, "tmpFlags":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Listener"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 81
    .local v7, "methodName":Ljava/lang/String;
    move-object v10, v2

    move-object v11, v7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v4, v10

    .line 93
    .line 96
    .end local v7    # "methodName":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Listener"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 97
    .restart local v7    # "methodName":Ljava/lang/String;
    move-object v10, v2

    move-object v11, v7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    move-object v5, v10

    .line 109
    .line 111
    .end local v7    # "methodName":Ljava/lang/String;
    :goto_1
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addChangeListener:Ljava/lang/reflect/Method;

    .line 112
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeChangeListener:Ljava/lang/reflect/Method;

    .line 113
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->flags:I

    .line 114
    return-void

    .line 82
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 84
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    move-object v10, v2

    :try_start_2
    const-string v11, "addPropertyChangeListener"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    move-object v4, v10

    .line 85
    move v10, v6

    const/4 v11, 0x1

    or-int/lit8 v10, v10, 0x1

    move v6, v10

    .line 92
    goto :goto_0

    .line 86
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 88
    .local v8, "e1":Ljava/lang/NoSuchMethodException;
    move-object v10, v2

    :try_start_3
    const-string v11, "addPropertyChangeListener"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    move-object v4, v10

    .line 91
    goto/16 :goto_0

    .line 89
    :catch_2
    move-exception v10

    move-object v9, v10

    goto/16 :goto_0

    .line 98
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v10

    move-object v7, v10

    .line 100
    .restart local v7    # "e":Ljava/lang/NoSuchMethodException;
    move-object v10, v2

    :try_start_4
    const-string v11, "removePropertyChangeListener"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    move-object v5, v10

    .line 101
    move v10, v6

    const/4 v11, 0x2

    or-int/lit8 v10, v10, 0x2

    move v6, v10

    .line 108
    goto :goto_1

    .line 102
    :catch_4
    move-exception v10

    move-object v8, v10

    .line 104
    .restart local v8    # "e1":Ljava/lang/NoSuchMethodException;
    move-object v10, v2

    :try_start_5
    const-string v11, "removePropertyChangeListener"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/beans/PropertyChangeListener;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    move-object v5, v10

    .line 107
    goto/16 :goto_1

    .line 105
    :catch_5
    move-exception v10

    move-object v9, v10

    goto/16 :goto_1
.end method

.method public static capitalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V
    .locals 10

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addChangeListener:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 123
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->flags:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addChangeListener:Ljava/lang/reflect/Method;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addChangeListener:Ljava/lang/reflect/Method;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 132
    goto :goto_0

    .line 130
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getGetter()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->type:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    return-object v0
.end method

.method public removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V
    .locals 10

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeChangeListener:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 139
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->flags:I

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeChangeListener:Ljava/lang/reflect/Method;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 148
    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeChangeListener:Ljava/lang/reflect/Method;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 148
    goto :goto_0

    .line 146
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
