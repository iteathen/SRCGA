.class public Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.super Ljava/util/AbstractMap;
.source "ProxyBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;,
        Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;,
        Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;,
        Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;,
        Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljavafx/util/Builder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final GETTER_PREFIX:Ljava/lang/String; = "get"

.field private static final SETTER_PREFIX:Ljava/lang/String; = "set"

.field private static final defaultsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final constructors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private final constructorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private defaultConstructor:Ljava/lang/reflect/Constructor;

.field private hasDefaultConstructor:Z

.field private final propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final userValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 625
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    .line 626
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 627
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 629
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 633
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    sget-object v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object/from16 v3, p1

    .local v3, "tp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v23}, Ljava/util/AbstractMap;-><init>()V

    .line 62
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->hasDefaultConstructor:Z

    .line 124
    move-object/from16 v23, v2

    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->userValues:Ljava/util/Map;

    .line 132
    move-object/from16 v23, v2

    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->containers:Ljava/util/Map;

    .line 69
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    .line 71
    move-object/from16 v23, v2

    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    .line 72
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lsun/reflect/misc/ConstructorUtil;->getConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v23

    move-object/from16 v4, v23

    .line 74
    .local v4, "ctors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v23, v4

    move-object/from16 v5, v23

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v6, v23

    const/16 v23, 0x0

    move/from16 v7, v23

    :goto_0
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    move-object/from16 v23, v5

    move/from16 v24, v7

    aget-object v23, v23, v24

    move-object/from16 v8, v23

    .line 76
    .local v8, "c":Ljava/lang/reflect/Constructor;
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v10, v23

    .line 77
    .local v10, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v23

    move-object/from16 v11, v23

    .line 80
    .local v11, "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    move-object/from16 v23, v10

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 81
    move-object/from16 v23, v2

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->hasDefaultConstructor:Z

    .line 82
    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/16 v23, 0x0

    move/from16 v12, v23

    .line 85
    .local v12, "i":I
    const/16 v23, 0x1

    move/from16 v13, v23

    .line 86
    .local v13, "properlyAnnotated":Z
    new-instance v23, Ljava/util/LinkedHashMap;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v9, v23

    .line 87
    .local v9, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;>;"
    move-object/from16 v23, v10

    move-object/from16 v14, v23

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v15, v23

    const/16 v23, 0x0

    move/from16 v16, v23

    :goto_2
    move/from16 v23, v16

    move/from16 v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move-object/from16 v23, v14

    move/from16 v24, v16

    aget-object v23, v23, v24

    move-object/from16 v17, v23

    .line 88
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    move-object/from16 v18, v23

    .line 89
    .local v18, "argAnnotation":Ljavafx/beans/NamedArg;
    move-object/from16 v23, v11

    move/from16 v24, v12

    aget-object v23, v23, v24

    move-object/from16 v19, v23

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v20, v23

    const/16 v23, 0x0

    move/from16 v21, v23

    :goto_3
    move/from16 v23, v21

    move/from16 v24, v20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move-object/from16 v23, v19

    move/from16 v24, v21

    aget-object v23, v23, v24

    move-object/from16 v22, v23

    .line 90
    .local v22, "annotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v23, v22

    move-object/from16 v0, v23

    instance-of v0, v0, Ljavafx/beans/NamedArg;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 91
    move-object/from16 v23, v22

    check-cast v23, Ljavafx/beans/NamedArg;

    move-object/from16 v18, v23

    .line 96
    .end local v22    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    move-object/from16 v23, v18

    if-eqz v23, :cond_4

    .line 97
    new-instance v23, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v18

    .line 98
    invoke-interface/range {v25 .. v25}, Ljavafx/beans/NamedArg;->value()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v18

    .line 99
    invoke-interface/range {v26 .. v26}, Ljavafx/beans/NamedArg;->defaultValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v17

    invoke-direct/range {v24 .. v27}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    move-object/from16 v19, v23

    .line 101
    .local v19, "av":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object/from16 v23, v9

    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljavafx/beans/NamedArg;->value()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v19

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 102
    .line 106
    add-int/lit8 v12, v12, 0x1

    .line 87
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 89
    .end local v19    # "av":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    .restart local v22    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 103
    .end local v22    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    const/16 v23, 0x0

    move/from16 v13, v23

    .line 108
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "argAnnotation":Ljavafx/beans/NamedArg;
    :cond_5
    move/from16 v23, v13

    if-eqz v23, :cond_0

    .line 109
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object/from16 v23, v0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto/16 :goto_1

    .line 114
    .end local v8    # "c":Ljava/lang/reflect/Constructor;
    .end local v9    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;>;"
    .end local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v12    # "i":I
    .end local v13    # "properlyAnnotated":Z
    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->hasDefaultConstructor:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 115
    new-instance v23, Ljava/lang/RuntimeException;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot create instance of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    move-object/from16 v26, v0

    .line 116
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " the constructor is not properly annotated."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 120
    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructors:Ljava/util/Set;

    .line 121
    move-object/from16 v23, v2

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->scanForSetters()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertiesMap:Ljava/util/Map;

    .line 122
    return-void
.end method

.method private chooseBestConstructors(Ljava/util/Set;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object/from16 v2, p1

    .local v2, "settersArgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v15

    .line 256
    .local v3, "immutablesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v3

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v15

    .line 259
    new-instance v15, Ljava/util/HashSet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v15

    .line 260
    .local v4, "propertiesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v4

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v15

    .line 262
    const v15, 0x7fffffff

    move v5, v15

    .line 263
    .local v5, "propertiesToSetCount":I
    const v15, 0x7fffffff

    move v6, v15

    .line 267
    .local v6, "mutablesToSetCount":I
    new-instance v15, Ljava/util/HashSet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object v7, v15

    .line 268
    .local v7, "chosenConstructors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor;>;"
    const/4 v15, 0x0

    move-object v8, v15

    .line 269
    .local v8, "argsNotSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructors:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v9, v15

    :goto_0
    move-object v15, v9

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Constructor;

    move-object v10, v15

    .line 270
    .local v10, "c":Ljava/lang/reflect/Constructor;
    move-object v15, v1

    move-object/from16 v16, v10

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getArgumentNames(Ljava/lang/reflect/Constructor;)Ljava/util/Set;

    move-result-object v15

    move-object v11, v15

    .line 274
    .local v11, "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v11

    move-object/from16 v16, v3

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 275
    goto :goto_0

    .line 281
    :cond_0
    new-instance v15, Ljava/util/HashSet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v15

    .line 282
    .local v12, "propertiesToSetInConstructor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v12

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v15

    .line 288
    new-instance v15, Ljava/util/HashSet;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v17}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v13, v15

    .line 289
    .local v13, "mutablesNotSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v15, v13

    move-object/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v15

    .line 291
    move-object v15, v12

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    move v14, v15

    .line 292
    .local v14, "currentPropSize":I
    move v15, v5

    move/from16 v16, v14

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move v15, v6

    move-object/from16 v16, v13

    .line 293
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 295
    move-object v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 298
    :cond_1
    move v15, v5

    move/from16 v16, v14

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    move v15, v5

    move/from16 v16, v14

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move v15, v6

    move-object/from16 v16, v13

    .line 299
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 300
    :cond_2
    move v15, v14

    move v5, v15

    .line 301
    move-object v15, v13

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    move v6, v15

    .line 302
    move-object v15, v7

    invoke-interface {v15}, Ljava/util/Set;->clear()V

    .line 303
    move-object v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 305
    :cond_3
    goto/16 :goto_0

    .line 307
    .end local v10    # "c":Ljava/lang/reflect/Constructor;
    .end local v11    # "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "propertiesToSetInConstructor":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "mutablesNotSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "currentPropSize":I
    :cond_4
    move-object v15, v8

    if-eqz v15, :cond_5

    move-object v15, v8

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 308
    new-instance v15, Ljava/lang/RuntimeException;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot create instance of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    move-object/from16 v18, v0

    .line 309
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " no constructor contains all properties specified in FXML."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 313
    :cond_5
    move-object v15, v7

    move-object v1, v15

    .end local v1    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v1
.end method

.method private static convertListToArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "userValue":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "localType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 613
    .local v2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    const-class v5, Ljava/util/List;

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 615
    .local v3, "l":Ljava/util/List;
    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "userValue":Ljava/lang/Object;
    return-object v0
.end method

.method private createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/reflect/Constructor;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 470
    .local v3, "retObj":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    invoke-static {v4}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 471
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 473
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method private createObjectFromConstructor(Ljava/lang/reflect/Constructor;Ljava/util/Set;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 348
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object/from16 v1, p1

    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    move-object/from16 v2, p2

    .local v2, "propertiesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    move-object v3, v12

    .line 349
    .local v3, "retObj":Ljava/lang/Object;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object v13, v1

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object v4, v12

    .line 350
    .local v4, "constructorArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;>;"
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Object;

    move-object v5, v12

    .line 351
    .local v5, "argsForConstruction":[Ljava/lang/Object;
    const/4 v12, 0x0

    move v6, v12

    .line 355
    .local v6, "i":I
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v2

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v7, v12

    .line 356
    .local v7, "currentPropertiesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    :goto_0
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;

    move-object v9, v12

    .line 358
    .local v9, "value":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getUserValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 359
    .local v10, "userValue":Ljava/lang/Object;
    move-object v12, v10

    if-eqz v12, :cond_0

    .line 361
    move-object v12, v5

    move v13, v6

    move-object v14, v10

    move-object v15, v9

    :try_start_0
    invoke-virtual {v15}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .line 377
    :goto_1
    move-object v12, v7

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v12

    .line 378
    add-int/lit8 v6, v6, 0x1

    .line 379
    goto :goto_0

    .line 362
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 363
    .local v11, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    .line 399
    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .end local v3    # "retObj":Ljava/lang/Object;
    .end local v9    # "value":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    .end local v10    # "userValue":Ljava/lang/Object;
    .end local v11    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 367
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .restart local v3    # "retObj":Ljava/lang/Object;
    .restart local v9    # "value":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    .restart local v10    # "userValue":Ljava/lang/Object;
    :cond_0
    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getDefaultValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 369
    move-object v12, v5

    move v13, v6

    move-object v14, v9

    :try_start_1
    invoke-virtual {v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getDefaultValue()Ljava/lang/String;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    goto :goto_1

    .line 370
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 371
    .restart local v11    # "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_2

    .line 374
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_1
    move-object v12, v5

    move v13, v6

    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    goto :goto_1

    .line 382
    .end local v9    # "value":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    .end local v10    # "userValue":Ljava/lang/Object;
    :cond_2
    move-object v12, v0

    move-object v13, v1

    move-object v14, v5

    :try_start_2
    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    move-object v3, v12

    .line 385
    .line 387
    .end local v3    # "retObj":Ljava/lang/Object;
    :goto_3
    move-object v12, v3

    if-eqz v12, :cond_3

    .line 388
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    :goto_4
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    .line 390
    .local v9, "propName":Ljava/lang/String;
    move-object v12, v0

    :try_start_3
    iget-object v12, v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertiesMap:Ljava/util/Map;

    move-object v13, v9

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;

    move-object v10, v12

    .line 391
    .local v10, "property":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    move-object v12, v10

    move-object v13, v3

    move-object v14, v0

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->getType()Ljava/lang/Class;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getUserValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 395
    .line 396
    goto :goto_4

    .line 383
    .end local v9    # "propName":Ljava/lang/String;
    .end local v10    # "property":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    .restart local v3    # "retObj":Ljava/lang/Object;
    :catch_2
    move-exception v12

    move-object v8, v12

    goto :goto_3

    .line 392
    .end local v3    # "retObj":Ljava/lang/Object;
    .restart local v9    # "propName":Ljava/lang/String;
    :catch_3
    move-exception v12

    move-object v10, v12

    .line 394
    .local v10, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_2

    .line 399
    .end local v9    # "propName":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object v12, v3

    move-object v0, v12

    goto :goto_2
.end method

.method private createObjectFromDefaultConstructor()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    const/4 v5, 0x0

    move-object v1, v5

    .line 331
    .local v1, "retObj":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v5

    .line 334
    .line 335
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 337
    .local v3, "propName":Ljava/lang/String;
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertiesMap:Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;

    move-object v4, v5

    .line 338
    .local v4, "property":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getUserValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    .line 342
    goto :goto_0

    .line 332
    .end local v3    # "propName":Ljava/lang/String;
    .end local v4    # "property":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 333
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 339
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "propName":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 340
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 344
    .end local v3    # "propName":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method private createObjectWithExactArguments(Ljava/lang/reflect/Constructor;Ljava/util/Set;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 442
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljava/lang/reflect/Constructor;
    move-object/from16 v2, p2

    .local v2, "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    move-object v3, v12

    .line 443
    .local v3, "retObj":Ljava/lang/Object;
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Object;

    move-object v4, v12

    .line 444
    .local v4, "argsForConstruction":[Ljava/lang/Object;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object v13, v1

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object v5, v12

    .line 446
    .local v5, "constructorArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;>;"
    const/4 v12, 0x0

    move v6, v12

    .line 448
    .local v6, "i":I
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_0
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .line 449
    .local v8, "arg":Ljava/lang/String;
    move-object v12, v5

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;

    invoke-virtual {v12}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->getType()Ljava/lang/Class;

    move-result-object v12

    move-object v9, v12

    .line 450
    .local v9, "tp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v12, v0

    move-object v13, v8

    move-object v14, v9

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getUserValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 452
    .local v10, "value":Ljava/lang/Object;
    move-object v12, v4

    move v13, v6

    add-int/lit8 v6, v6, 0x1

    move-object v14, v10

    move-object v15, v9

    :try_start_0
    invoke-static {v14, v15}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .line 456
    goto :goto_0

    .line 453
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 454
    .local v11, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    move-object v0, v12

    .line 464
    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .end local v3    # "retObj":Ljava/lang/Object;
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "tp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 459
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .restart local v3    # "retObj":Ljava/lang/Object;
    :cond_0
    move-object v12, v0

    move-object v13, v1

    move-object v14, v4

    :try_start_1
    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    move-object v3, v12

    .line 462
    .line 464
    .end local v3    # "retObj":Ljava/lang/Object;
    :goto_2
    move-object v12, v3

    move-object v0, v12

    goto :goto_1

    .line 460
    .restart local v3    # "retObj":Ljava/lang/Object;
    :catch_1
    move-exception v12

    move-object v7, v12

    goto :goto_2
.end method

.method private getArgumentNames(Ljava/lang/reflect/Constructor;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/reflect/Constructor;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructorsMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v2, v4

    .line 319
    .local v2, "constructorArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;>;"
    const/4 v4, 0x0

    move-object v3, v4

    .line 320
    .local v3, "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 321
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object v3, v4

    .line 323
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method private static getClassMethodCache(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v1, v10

    .line 587
    .local v1, "classMethodCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/reflect/Method;>;>;"
    move-object v10, v0

    invoke-static {v10}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 589
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v2, v10

    .line 590
    .local v2, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object v10, v2

    move-object v3, v10

    move-object v10, v3

    array-length v10, v10

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_2

    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 591
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    move v7, v10

    .line 593
    .local v7, "modifiers":I
    move v10, v7

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 594
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 595
    .local v8, "name":Ljava/lang/String;
    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedList;

    move-object v9, v10

    .line 597
    .local v9, "namedMethods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/reflect/Method;>;"
    move-object v10, v9

    if-nez v10, :cond_0

    .line 598
    new-instance v10, Ljava/util/LinkedList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object v9, v10

    .line 599
    move-object v10, v1

    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 602
    :cond_0
    move-object v10, v9

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 590
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "namedMethods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/reflect/Method;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 606
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "modifiers":I
    :cond_2
    move-object v10, v1

    move-object v0, v10

    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method private static getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->defaultsMap:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0
.end method

.method private getReadOnlyProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;-><init>(Lcom/sun/javafx/fxml/builder/ProxyBuilder$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method private getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->containers:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 143
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 144
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getReadOnlyProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 145
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 146
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->containers:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method private getUserValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->userValues:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 404
    .local v3, "val":Ljava/lang/Object;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 405
    const/4 v5, 0x0

    move-object v0, v5

    .line 438
    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    :goto_0
    return-object v0

    .line 408
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    :cond_0
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 416
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 418
    move-object v5, v3

    move-object v6, v2

    :try_start_0
    invoke-static {v5, v6}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->convertListToArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 419
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 425
    :cond_2
    const-class v5, Ljava/util/Collection;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 426
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 429
    :cond_3
    const-class v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder$ArrayListWrapper;

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 434
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    move-object v4, v5

    .line 435
    .local v4, "l":Ljava/util/List;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 438
    .end local v4    # "l":Ljava/util/List;
    :cond_4
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method private scanForSetters()Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object v1, v11

    .line 478
    .local v1, "strsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;>;"
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    invoke-static {v11}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getClassMethodCache(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v11

    move-object v2, v11

    .line 480
    .local v2, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/reflect/Method;>;>;"
    move-object v11, v2

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v3, v11

    :goto_0
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v4, v11

    .line 481
    .local v4, "methodName":Ljava/lang/String;
    move-object v11, v4

    const-string v12, "set"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 482
    move-object v11, v4

    const-string v12, "set"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 483
    .local v5, "propName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 484
    move-object v11, v2

    move-object v12, v4

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v6, v11

    .line 485
    .local v6, "methodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v11

    :goto_1
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    move-object v8, v11

    .line 486
    .local v8, "m":Ljava/lang/reflect/Method;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    move-object v9, v11

    .line 487
    .local v9, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    move-object v10, v11

    .line 488
    .local v10, "argType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v11, v9

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v10

    array-length v11, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 489
    move-object v11, v1

    move-object v12, v5

    new-instance v13, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v8

    move-object/from16 v16, v10

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Setter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 491
    :cond_0
    goto :goto_1

    .line 493
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "methodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "argType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    move-object v11, v4

    const-string v12, "get"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 494
    move-object v11, v4

    const-string v12, "set"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 495
    .restart local v5    # "propName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 496
    move-object v11, v2

    move-object v12, v4

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v6, v11

    .line 497
    .restart local v6    # "methodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v11, v6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v11

    :goto_2
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    move-object v8, v11

    .line 498
    .restart local v8    # "m":Ljava/lang/reflect/Method;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    move-object v9, v11

    .line 499
    .restart local v9    # "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    move-object v10, v11

    .line 500
    .restart local v10    # "argType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v11, Ljava/util/Collection;

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    array-length v11, v11

    if-nez v11, :cond_2

    .line 501
    move-object v11, v1

    move-object v12, v5

    new-instance v13, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 503
    :cond_2
    goto :goto_2

    .line 505
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "methodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "argType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    goto/16 :goto_0

    .line 507
    .end local v4    # "methodName":Ljava/lang/String;
    :cond_4
    move-object v11, v1

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    const/4 v7, 0x0

    move-object v1, v7

    .line 200
    .local v1, "retObj":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->containers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v3, v7

    .line 201
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v7, v0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 202
    goto :goto_0

    .line 204
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->userValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    .line 206
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->constructors:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    .end local v1    # "retObj":Ljava/lang/Object;
    :goto_1
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    move-object v3, v7

    .line 207
    .local v3, "c":Ljava/lang/reflect/Constructor;
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getArgumentNames(Ljava/lang/reflect/Constructor;)Ljava/util/Set;

    move-result-object v7

    move-object v4, v7

    .line 210
    .local v4, "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createObjectWithExactArguments(Ljava/lang/reflect/Constructor;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 212
    .restart local v1    # "retObj":Ljava/lang/Object;
    move-object v7, v1

    if-eqz v7, :cond_1

    .line 213
    move-object v7, v1

    move-object v0, v7

    .line 250
    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .local v2, "settersArgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "propertiesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "chosenConstructors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor;>;"
    .local v6, "constructor":Ljava/lang/reflect/Constructor;
    :goto_2
    return-object v0

    .line 216
    .end local v1    # "retObj":Ljava/lang/Object;
    .end local v2    # "settersArgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    .local v3, "c":Ljava/lang/reflect/Constructor;
    .local v4, "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 219
    .end local v3    # "c":Ljava/lang/reflect/Constructor;
    .end local v4    # "argumentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertiesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    move-object v2, v7

    .line 222
    .restart local v2    # "settersArgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->hasDefaultConstructor:Z

    if-eqz v7, :cond_3

    .line 223
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createObjectFromDefaultConstructor()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 224
    .restart local v1    # "retObj":Ljava/lang/Object;
    move-object v7, v1

    if-eqz v7, :cond_3

    .line 225
    move-object v7, v1

    move-object v0, v7

    goto :goto_2

    .line 230
    .end local v1    # "retObj":Ljava/lang/Object;
    :cond_3
    new-instance v7, Ljava/util/HashSet;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->propertyNames:Ljava/util/Set;

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v7

    .line 231
    .local v3, "propertiesToSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, v3

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v7

    .line 234
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->chooseBestConstructors(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    move-object v4, v7

    .line 237
    .local v4, "chosenConstructors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Constructor;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    move-object v6, v7

    .line 238
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->createObjectFromConstructor(Ljava/lang/reflect/Constructor;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 239
    .restart local v1    # "retObj":Ljava/lang/Object;
    move-object v7, v1

    if-eqz v7, :cond_4

    .line 240
    move-object v7, v1

    move-object v0, v7

    goto :goto_2

    .line 242
    :cond_4
    goto :goto_3

    .line 244
    .end local v1    # "retObj":Ljava/lang/Object;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_5
    move-object v7, v1

    if-nez v7, :cond_6

    .line 245
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot create instance of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->type:Ljava/lang/Class;

    .line 246
    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with given set of properties: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->userValues:Ljava/util/Map;

    .line 247
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 250
    :cond_6
    move-object v7, v1

    move-object v0, v7

    goto/16 :goto_2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->getTemporaryContainer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/ProxyBuilder;->userValues:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 129
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder;, "Lcom/sun/javafx/fxml/builder/ProxyBuilder<TT;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
