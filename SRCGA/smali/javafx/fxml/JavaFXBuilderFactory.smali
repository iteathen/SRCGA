.class public final Ljavafx/fxml/JavaFXBuilderFactory;
.super Ljava/lang/Object;
.source "JavaFXBuilderFactory.java"

# interfaces
.implements Ljavafx/util/BuilderFactory;


# instance fields
.field private final NO_BUILDER:Ljavafx/fxml/JavaFXBuilder;

.field private final alwaysUseBuilders:Z

.field private final builders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljavafx/fxml/JavaFXBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final webSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object v1, v0

    invoke-static {}, Ljavafx/fxml/FXMLLoader;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/JavaFXBuilderFactory;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/JavaFXBuilderFactory;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move v2, p2

    .local v2, "alwaysUseBuilders":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v3, v0

    new-instance v4, Ljavafx/fxml/JavaFXBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/fxml/JavaFXBuilder;-><init>()V

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilderFactory;->NO_BUILDER:Ljavafx/fxml/JavaFXBuilder;

    .line 76
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilderFactory;->builders:Ljava/util/Map;

    .line 120
    move-object v3, v1

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 124
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/JavaFXBuilderFactory;->classLoader:Ljava/lang/ClassLoader;

    .line 125
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljavafx/fxml/JavaFXBuilderFactory;->alwaysUseBuilders:Z

    .line 126
    move-object v3, v0

    sget-object v4, Ljavafx/application/ConditionalFeature;->WEB:Ljavafx/application/ConditionalFeature;

    invoke-static {v4}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v4

    iput-boolean v4, v3, Ljavafx/fxml/JavaFXBuilderFactory;->webSupported:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move v1, p1

    .local v1, "alwaysUseBuilders":Z
    move-object v2, v0

    invoke-static {}, Ljavafx/fxml/FXMLLoader;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/JavaFXBuilderFactory;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 99
    return-void
.end method

.method private scanForConstructorAnnotations(Ljava/lang/Class;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object/from16 v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v13, v1

    invoke-static {v13}, Lsun/reflect/misc/ConstructorUtil;->getConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v13

    move-object v2, v13

    .line 217
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    move-object v13, v2

    move-object v3, v13

    move-object v13, v3

    array-length v13, v13

    move v4, v13

    const/4 v13, 0x0

    move v5, v13

    :goto_0
    move v13, v5

    move v14, v4

    if-ge v13, v14, :cond_3

    move-object v13, v3

    move v14, v5

    aget-object v13, v13, v14

    move-object v6, v13

    .line 218
    .local v6, "constructor":Ljava/lang/reflect/Constructor;
    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    move-object v7, v13

    .line 219
    .local v7, "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i":I
    :goto_1
    move v13, v8

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-ge v13, v14, :cond_2

    .line 220
    move-object v13, v7

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    move-object v13, v9

    array-length v13, v13

    move v10, v13

    const/4 v13, 0x0

    move v11, v13

    :goto_2
    move v13, v11

    move v14, v10

    if-ge v13, v14, :cond_1

    move-object v13, v9

    move v14, v11

    aget-object v13, v13, v14

    move-object v12, v13

    .line 221
    .local v12, "annotation":Ljava/lang/annotation/Annotation;
    move-object v13, v12

    instance-of v13, v13, Ljavafx/beans/NamedArg;

    if-eqz v13, :cond_0

    .line 222
    const/4 v13, 0x1

    move v0, v13

    .line 227
    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v7    # "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v8    # "i":I
    .end local v12    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_3
    return v0

    .line 220
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v7    # "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    .restart local v8    # "i":I
    .restart local v12    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 219
    .end local v12    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 217
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v7    # "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v8    # "i":I
    :cond_3
    const/4 v13, 0x0

    move v0, v13

    goto :goto_3
.end method


# virtual methods
.method createTypeBuilder(Ljava/lang/Class;)Ljavafx/fxml/JavaFXBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavafx/fxml/JavaFXBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v2, v5

    .line 200
    .local v2, "typeBuilder":Ljavafx/fxml/JavaFXBuilder;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/JavaFXBuilderFactory;->classLoader:Ljava/lang/ClassLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Builder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 202
    .local v3, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v5, Ljavafx/fxml/JavaFXBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/JavaFXBuilder;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 207
    .line 208
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/fxml/JavaFXBuilderFactory;->alwaysUseBuilders:Z

    if-nez v5, :cond_0

    .line 209
    const-class v5, Ljavafx/fxml/JavaFXBuilderFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v7, "class {0} requires a builder."

    move-object v8, v1

    .line 210
    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    return-object v0

    .line 203
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 205
    .local v4, "ex":Ljava/lang/Exception;
    const-class v5, Ljavafx/fxml/JavaFXBuilderFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to instantiate JavaFXBuilder for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    .line 206
    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getBuilder(Ljava/lang/Class;)Ljavafx/util/Builder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavafx/util/Builder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilderFactory;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v1

    const-class v8, Ljavafx/scene/Scene;

    if-ne v7, v8, :cond_0

    .line 134
    new-instance v7, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;-><init>()V

    move-object v2, v7

    .line 195
    .local v2, "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :goto_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    return-object v0

    .line 135
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilderFactory;
    :cond_0
    move-object v7, v1

    const-class v8, Ljavafx/scene/text/Font;

    if-ne v7, v8, :cond_1

    .line 136
    new-instance v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;-><init>()V

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto :goto_0

    .line 137
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_1
    move-object v7, v1

    const-class v8, Ljavafx/scene/image/Image;

    if-ne v7, v8, :cond_2

    .line 138
    new-instance v7, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;-><init>()V

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto :goto_0

    .line 139
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_2
    move-object v7, v1

    const-class v8, Ljava/net/URL;

    if-ne v7, v8, :cond_3

    .line 140
    new-instance v7, Lcom/sun/javafx/fxml/builder/URLBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilderFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/builder/URLBuilder;-><init>(Ljava/lang/ClassLoader;)V

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto :goto_0

    .line 141
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_3
    move-object v7, v1

    const-class v8, Ljavafx/scene/shape/TriangleMesh;

    if-ne v7, v8, :cond_4

    .line 142
    new-instance v7, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;-><init>()V

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto :goto_0

    .line 143
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_4
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/fxml/JavaFXBuilderFactory;->scanForConstructorAnnotations(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 144
    new-instance v7, Lcom/sun/javafx/fxml/builder/ProxyBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/builder/ProxyBuilder;-><init>(Ljava/lang/Class;)V

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto :goto_0

    .line 146
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_5
    const/4 v7, 0x0

    move-object v3, v7

    .line 147
    .local v3, "objectBuilder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<Ljava/lang/Object;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilderFactory;->builders:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/fxml/JavaFXBuilder;

    move-object v4, v7

    .line 149
    .local v4, "typeBuilder":Ljavafx/fxml/JavaFXBuilder;
    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/JavaFXBuilderFactory;->NO_BUILDER:Ljavafx/fxml/JavaFXBuilder;

    if-eq v7, v8, :cond_9

    .line 150
    move-object v7, v4

    if-nez v7, :cond_8

    .line 161
    move-object v7, v1

    const/4 v8, 0x0

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v7, v8}, Lsun/reflect/misc/ConstructorUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 166
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/fxml/JavaFXBuilderFactory;->alwaysUseBuilders:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/Exception;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 170
    .local v6, "x":Ljava/lang/Exception;
    const/4 v7, 0x0

    move v5, v7

    .line 175
    .end local v6    # "x":Ljava/lang/Exception;
    .local v5, "hasDefaultConstructor":Z
    :goto_1
    move v7, v5

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/fxml/JavaFXBuilderFactory;->webSupported:Z

    if-eqz v7, :cond_7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "javafx.scene.web.WebView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 177
    :cond_6
    move-object v7, v0

    move-object v8, v1

    :try_start_1
    invoke-virtual {v7, v8}, Ljavafx/fxml/JavaFXBuilderFactory;->createTypeBuilder(Ljava/lang/Class;)Ljavafx/fxml/JavaFXBuilder;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v4, v7

    .line 181
    .line 184
    :cond_7
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/JavaFXBuilderFactory;->builders:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v4

    if-nez v9, :cond_b

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilderFactory;->NO_BUILDER:Ljavafx/fxml/JavaFXBuilder;

    :goto_3
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 187
    .end local v5    # "hasDefaultConstructor":Z
    :cond_8
    move-object v7, v4

    if-eqz v7, :cond_9

    .line 188
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/fxml/JavaFXBuilder;->createBuilder()Ljavafx/util/Builder;

    move-result-object v7

    move-object v3, v7

    .line 192
    :cond_9
    move-object v7, v3

    move-object v2, v7

    .restart local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    goto/16 :goto_0

    .line 168
    .end local v2    # "builder":Ljavafx/util/Builder;, "Ljavafx/util/Builder<*>;"
    :cond_a
    const/4 v7, 0x1

    move v5, v7

    .line 171
    .restart local v5    # "hasDefaultConstructor":Z
    goto :goto_1

    .line 178
    :catch_1
    move-exception v7

    move-object v6, v7

    goto :goto_2

    .line 184
    :cond_b
    move-object v9, v4

    goto :goto_3
.end method
