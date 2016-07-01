.class public Lcom/sun/javafx/property/adapter/PropertyDescriptor;
.super Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
.source "PropertyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;
    }
.end annotation


# static fields
.field private static final ADD_PREFIX:Ljava/lang/String; = "add"

.field private static final ADD_VETOABLE_LISTENER_METHOD_NAME:Ljava/lang/String; = "addVetoableChangeListener"

.field private static final ADD_VETOABLE_LISTENER_TAKES_NAME:I = 0x1

.field private static final REMOVE_PREFIX:Ljava/lang/String; = "remove"

.field private static final REMOVE_VETOABLE_LISTENER_METHOD_NAME:Ljava/lang/String; = "removeVetoableChangeListener"

.field private static final REMOVE_VETOABLE_LISTENER_TAKES_NAME:I = 0x2

.field private static final SUFFIX:Ljava/lang/String; = "Listener"


# instance fields
.field private final addVetoListener:Ljava/lang/reflect/Method;

.field private final flags:I

.field private final removeVetoListener:Ljava/lang/reflect/Method;

.field private final setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object/from16 v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v3, p3

    .local v3, "getter":Ljava/lang/reflect/Method;
    move-object/from16 v4, p4

    .local v4, "setter":Ljava/lang/reflect/Method;
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 63
    move-object v13, v0

    move-object v14, v4

    iput-object v14, v13, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    .line 65
    const/4 v13, 0x0

    move-object v5, v13

    .line 66
    .local v5, "tmpAddVetoListener":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    move-object v6, v13

    .line 67
    .local v6, "tmpRemoveVetoListener":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    move v7, v13

    .line 70
    .local v7, "tmpFlags":I
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Listener"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 72
    .local v8, "addMethodName":Ljava/lang/String;
    move-object v13, v2

    move-object v14, v8

    const/4 v15, 0x1

    :try_start_0
    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v5, v13

    .line 84
    .line 87
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->capitalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Listener"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 89
    .local v9, "removeMethodName":Ljava/lang/String;
    move-object v13, v2

    move-object v14, v9

    const/4 v15, 0x1

    :try_start_1
    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    move-object v6, v13

    .line 101
    .line 103
    :goto_1
    move-object v13, v0

    move-object v14, v5

    iput-object v14, v13, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addVetoListener:Ljava/lang/reflect/Method;

    .line 104
    move-object v13, v0

    move-object v14, v6

    iput-object v14, v13, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeVetoListener:Ljava/lang/reflect/Method;

    .line 105
    move-object v13, v0

    move v14, v7

    iput v14, v13, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->flags:I

    .line 106
    return-void

    .line 73
    .end local v9    # "removeMethodName":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 75
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    move-object v13, v2

    :try_start_2
    const-string v14, "addVetoableChangeListener"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    move-object v5, v13

    .line 76
    move v13, v7

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    move v7, v13

    .line 83
    goto :goto_0

    .line 77
    :catch_1
    move-exception v13

    move-object v10, v13

    .line 79
    .local v10, "e1":Ljava/lang/NoSuchMethodException;
    move-object v13, v2

    :try_start_3
    const-string v14, "addVetoableChangeListener"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v13

    move-object v5, v13

    .line 82
    goto/16 :goto_0

    .line 80
    :catch_2
    move-exception v13

    move-object v11, v13

    goto/16 :goto_0

    .line 90
    .end local v10    # "e1":Ljava/lang/NoSuchMethodException;
    .local v9, "removeMethodName":Ljava/lang/String;
    :catch_3
    move-exception v13

    move-object v10, v13

    .line 92
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    move-object v13, v2

    :try_start_4
    const-string v14, "removeVetoableChangeListener"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v13

    move-object v6, v13

    .line 93
    move v13, v7

    const/4 v14, 0x2

    or-int/lit8 v13, v13, 0x2

    move v7, v13

    .line 100
    goto/16 :goto_1

    .line 94
    :catch_4
    move-exception v13

    move-object v11, v13

    .line 96
    .local v11, "e1":Ljava/lang/NoSuchMethodException;
    move-object v13, v2

    :try_start_5
    const-string v14, "removeVetoableChangeListener"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-class v18, Ljava/beans/VetoableChangeListener;

    aput-object v18, v16, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v13

    move-object v6, v13

    .line 99
    goto/16 :goto_1

    .line 97
    :catch_5
    move-exception v13

    move-object v12, v13

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sun/javafx/property/adapter/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addVetoListener:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 113
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->flags:I

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 114
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addVetoListener:Ljava/lang/reflect/Method;

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

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 122
    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addVetoListener:Ljava/lang/reflect/Method;

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

    .line 118
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 122
    goto :goto_0

    .line 120
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getSetter()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    return-object v0
.end method

.method public removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V
    .locals 10

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeVetoListener:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v0

    :try_start_0
    iget v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->flags:I

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeVetoListener:Ljava/lang/reflect/Method;

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

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    .line 144
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeVetoListener:Ljava/lang/reflect/Method;

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

    .line 138
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 142
    goto :goto_0

    .line 140
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
