.class public Lcom/sun/prism/es2/ES2Shader;
.super Lcom/sun/prism/impl/BaseGraphicsResource;
.source "ES2Shader.java"

# interfaces
.implements Lcom/sun/prism/ps/Shader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;,
        Lcom/sun/prism/es2/ES2Shader$Uniform;
    }
.end annotation


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private currentMatrix:[F

.field private final isPixcoordUsed:Z

.field private final maxTexCoordIndex:I

.field private programID:I

.field private final uniforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/prism/es2/ES2Shader$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;II[ILjava/util/Map;IZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "II[I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 91
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move/from16 v2, p2

    .local v2, "programID":I
    move/from16 v3, p3

    .local v3, "vertexShaderID":I
    move-object/from16 v4, p4

    .local v4, "fragmentShaderID":[I
    move-object/from16 v5, p5

    .local v5, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v6, p6

    .local v6, "maxTexCoordIndex":I
    move/from16 v7, p7

    .local v7, "isPixcoordUsed":Z
    move-object v11, v0

    new-instance v12, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v1

    move v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v2

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v18}, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;-><init>(Lcom/sun/prism/es2/ES2Context;I[IILcom/sun/prism/es2/ES2Shader$1;)V

    invoke-direct {v11, v12}, Lcom/sun/prism/impl/BaseGraphicsResource;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 80
    move-object v11, v0

    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v11, Lcom/sun/prism/es2/ES2Shader;->uniforms:Ljava/util/Map;

    .line 95
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    .line 96
    move-object v11, v0

    move v12, v2

    iput v12, v11, Lcom/sun/prism/es2/ES2Shader;->programID:I

    .line 97
    move-object v11, v0

    move v12, v6

    iput v12, v11, Lcom/sun/prism/es2/ES2Shader;->maxTexCoordIndex:I

    .line 98
    move-object v11, v0

    move v12, v7

    iput-boolean v12, v11, Lcom/sun/prism/es2/ES2Shader;->isPixcoordUsed:Z

    .line 99
    move-object v11, v0

    move v12, v2

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, v11, Lcom/sun/prism/es2/ES2Shader;->valid:Z

    .line 101
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/prism/es2/ES2Shader;->valid:Z

    if-eqz v11, :cond_2

    move-object v11, v5

    if-eqz v11, :cond_2

    .line 104
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/prism/es2/ES2Context;->getShaderProgram()I

    move-result v11

    move v8, v11

    .line 105
    .local v8, "currentProgram":I
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Lcom/sun/prism/es2/ES2Context;->setShaderProgram(I)V

    .line 106
    move-object v11, v5

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v9, v11

    :goto_1
    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v10, v11

    .line 107
    .local v10, "key":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v10

    move-object v13, v5

    move-object v14, v10

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;I)V

    .line 108
    goto :goto_1

    .line 99
    .end local v8    # "currentProgram":I
    .end local v10    # "key":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 109
    .restart local v8    # "currentProgram":I
    :cond_1
    move-object v11, v1

    move v12, v8

    invoke-virtual {v11, v12}, Lcom/sun/prism/es2/ES2Context;->setShaderProgram(I)V

    .line 111
    .end local v8    # "currentProgram":I
    :cond_2
    return-void
.end method

.method static createFromSource(Lcom/sun/prism/es2/ES2Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZ)Lcom/sun/prism/es2/ES2Shader;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Lcom/sun/prism/es2/ES2Shader;"
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    .local v0, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v1, p1

    .local v1, "vert":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "frag":Ljava/io/InputStream;
    move-object/from16 v3, p3

    .local v3, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v4, p4

    .local v4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v5, p5

    .local v5, "maxTexCoordIndex":I
    move/from16 v6, p6

    .local v6, "isPixcoordUsed":Z
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v2

    invoke-static {v11}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v7, v8

    .line 173
    .local v7, "fragmentShaderSource":[Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    invoke-static/range {v8 .. v14}, Lcom/sun/prism/es2/ES2Shader;->createFromSource(Lcom/sun/prism/es2/ES2Context;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZ)Lcom/sun/prism/es2/ES2Shader;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    return-object v0
.end method

.method static createFromSource(Lcom/sun/prism/es2/ES2Context;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZ)Lcom/sun/prism/es2/ES2Shader;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Lcom/sun/prism/es2/ES2Shader;"
        }
    .end annotation

    .prologue
    .line 119
    move-object/from16 v2, p0

    .local v2, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v3, p1

    .local v3, "vert":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "frag":[Ljava/lang/String;
    move-object/from16 v5, p3

    .local v5, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v6, p4

    .local v6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v7, p5

    .local v7, "maxTexCoordIndex":I
    move/from16 v8, p6

    .local v8, "isPixcoordUsed":Z
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v17

    move-object/from16 v9, v17

    .line 120
    .local v9, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/GLContext;->isShaderCompilerSupported()Z

    move-result v17

    if-nez v17, :cond_0

    .line 121
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "Shader compiler not available on this device"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 124
    :cond_0
    move-object/from16 v17, v3

    if-eqz v17, :cond_1

    move-object/from16 v17, v4

    if-eqz v17, :cond_1

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 125
    :cond_1
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "Both vertexShaderSource and fragmentShaderSource must be specified"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 130
    :cond_2
    move-object/from16 v17, v9

    move-object/from16 v18, v3

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/es2/GLContext;->compileShader(Ljava/lang/String;Z)I

    move-result v17

    move/from16 v10, v17

    .line 131
    .local v10, "vertexShaderID":I
    move/from16 v17, v10

    if-nez v17, :cond_3

    .line 132
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "Error creating vertex shader"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 136
    .local v11, "fragmentShaderID":[I
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "i":I
    :goto_0
    move/from16 v17, v12

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 137
    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    move/from16 v21, v12

    aget-object v20, v20, v21

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/GLContext;->compileShader(Ljava/lang/String;Z)I

    move-result v19

    aput v19, v17, v18

    .line 138
    move-object/from16 v17, v11

    move/from16 v18, v12

    aget v17, v17, v18

    if-nez v17, :cond_4

    .line 139
    move-object/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lcom/sun/prism/es2/GLContext;->deleteShader(I)V

    .line 141
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "Error creating fragment shader"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 136
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 145
    :cond_5
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 146
    .local v12, "attrs":[Ljava/lang/String;
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    .line 147
    .local v13, "indexs":[I
    const/16 v17, 0x0

    move/from16 v14, v17

    .line 148
    .local v14, "i":I
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v15, v17

    :goto_1
    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v16, v17

    .line 149
    .local v16, "attr":Ljava/lang/String;
    move-object/from16 v17, v12

    move/from16 v18, v14

    move-object/from16 v19, v16

    aput-object v19, v17, v18

    .line 150
    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v6

    move-object/from16 v20, v16

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aput v19, v17, v18

    .line 151
    add-int/lit8 v14, v14, 0x1

    .line 152
    goto :goto_1

    .line 153
    .end local v16    # "attr":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v21}, Lcom/sun/prism/es2/GLContext;->createProgram(I[I[Ljava/lang/String;[I)I

    move-result v17

    move/from16 v15, v17

    .line 155
    .local v15, "programID":I
    move/from16 v17, v15

    if-nez v17, :cond_7

    .line 158
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "Error creating shader program"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 161
    :cond_7
    new-instance v17, Lcom/sun/prism/es2/ES2Shader;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move/from16 v20, v15

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v5

    move/from16 v24, v7

    move/from16 v25, v8

    invoke-direct/range {v18 .. v25}, Lcom/sun/prism/es2/ES2Shader;-><init>(Lcom/sun/prism/es2/ES2Context;II[ILjava/util/Map;IZ)V

    move-object/from16 v2, v17

    .end local v2    # "context":Lcom/sun/prism/es2/ES2Context;
    return-object v2
.end method

.method private getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;
    .locals 8

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->uniforms:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-object v2, v4

    .line 230
    .local v2, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 232
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/es2/ES2Shader;->programID:I

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/prism/es2/GLContext;->getUniformLocation(ILjava/lang/String;)I

    move-result v4

    move v3, v4

    .line 233
    .local v3, "loc":I
    new-instance v4, Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;-><init>(Lcom/sun/prism/es2/ES2Shader$1;)V

    move-object v2, v4

    .line 234
    move-object v4, v2

    move v5, v3

    invoke-static {v4, v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$202(Lcom/sun/prism/es2/ES2Shader$Uniform;I)I

    move-result v4

    .line 235
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->uniforms:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    .end local v3    # "loc":I
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Shader;
    return-object v0
.end method

.method static readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x400

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v7

    .line 179
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/io/BufferedReader;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/io/InputStreamReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v7

    .line 181
    .local v2, "reader":Ljava/io/BufferedReader;
    const/16 v7, 0x400

    :try_start_0
    new-array v7, v7, [C

    move-object v3, v7

    .line 182
    .local v3, "chars":[C
    const/4 v7, 0x0

    move v4, v7

    .line 183
    .local v4, "numRead":I
    :goto_0
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    move v12, v7

    move v7, v12

    move v8, v12

    move v4, v8

    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 184
    move-object v7, v1

    move-object v8, v3

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v8, v9, v10}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 190
    :cond_0
    move-object v7, v2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .line 195
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "in":Ljava/io/InputStream;
    return-object v0

    .line 191
    .restart local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 192
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Error closing reader"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "numRead":I
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 187
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Error reading shader stream"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    move-object v5, v7

    .line 190
    move-object v7, v2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    .line 192
    move-object v7, v5

    throw v7

    .line 191
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 192
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Error closing reader"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public disable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/ES2Context;->updateShaderProgram(I)V

    .line 259
    return-void
.end method

.method public dispose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Shader;->programID:I

    if-eqz v1, :cond_0

    .line 564
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Shader;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    invoke-interface {v1}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V

    .line 565
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/ES2Shader;->programID:I

    .line 567
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/es2/ES2Shader;->valid:Z

    .line 568
    return-void
.end method

.method public enable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2Shader;->programID:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/ES2Context;->updateShaderProgram(I)V

    .line 248
    return-void
.end method

.method public getMaxTexCoordIndex()I
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Shader;->maxTexCoordIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Shader;
    return v0
.end method

.method public getProgramObject()I
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Shader;->programID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Shader;
    return v0
.end method

.method public isPixcoordUsed()Z
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2Shader;->isPixcoordUsed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Shader;
    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2Shader;->valid:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Shader;
    return v0
.end method

.method public setConstant(Ljava/lang/String;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "f0":F
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v5

    move-object v3, v5

    .line 389
    .local v3, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 390
    .line 400
    :goto_0
    return-void

    .line 392
    :cond_0
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 393
    move-object v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [F

    invoke-static {v5, v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 395
    :cond_1
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    check-cast v5, [F

    move-object v4, v5

    .line 396
    .local v4, "values":[F
    move-object v5, v4

    const/4 v6, 0x0

    aget v5, v5, v6

    move v6, v2

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 397
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v2

    aput v7, v5, v6

    .line 398
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    move-object v6, v3

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->uniform1f(IF)V

    .line 400
    :cond_2
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;FF)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "f0":F
    move v3, p3

    .local v3, "f1":F
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v6

    move-object v4, v6

    .line 415
    .local v4, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 416
    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 419
    move-object v6, v4

    const/4 v7, 0x2

    new-array v7, v7, [F

    invoke-static {v6, v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 421
    :cond_1
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    check-cast v6, [F

    move-object v5, v6

    .line 422
    .local v5, "values":[F
    move-object v6, v5

    const/4 v7, 0x0

    aget v6, v6, v7

    move v7, v2

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move-object v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    move v7, v3

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 423
    :cond_2
    move-object v6, v5

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    .line 424
    move-object v6, v5

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    .line 425
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move-object v7, v4

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v7

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->uniform2f(IFF)V

    .line 427
    :cond_3
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;FFF)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "f0":F
    move v3, p3

    .local v3, "f1":F
    move/from16 v4, p4

    .local v4, "f2":F
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v7

    move-object v5, v7

    .line 443
    .local v5, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 444
    .line 456
    :goto_0
    return-void

    .line 446
    :cond_0
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 447
    move-object v7, v5

    const/4 v8, 0x3

    new-array v8, v8, [F

    invoke-static {v7, v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 449
    :cond_1
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    check-cast v7, [F

    move-object v6, v7

    .line 450
    .local v6, "values":[F
    move-object v7, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    move v8, v2

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    move v8, v3

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v4

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    .line 451
    :cond_2
    move-object v7, v6

    const/4 v8, 0x0

    move v9, v2

    aput v9, v7, v8

    .line 452
    move-object v7, v6

    const/4 v8, 0x1

    move v9, v3

    aput v9, v7, v8

    .line 453
    move-object v7, v6

    const/4 v8, 0x2

    move v9, v4

    aput v9, v7, v8

    .line 454
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    move-object v8, v5

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v8

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/prism/es2/GLContext;->uniform3f(IFFF)V

    .line 456
    :cond_3
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;FFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "f0":F
    move/from16 v3, p3

    .local v3, "f1":F
    move/from16 v4, p4

    .local v4, "f2":F
    move/from16 v5, p5

    .local v5, "f3":F
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v8

    move-object v6, v8

    .line 473
    .local v6, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 474
    .line 487
    :goto_0
    return-void

    .line 476
    :cond_0
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 477
    move-object v8, v6

    const/4 v9, 0x4

    new-array v9, v9, [F

    invoke-static {v8, v9}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 479
    :cond_1
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    check-cast v8, [F

    move-object v7, v8

    .line 480
    .local v7, "values":[F
    move-object v8, v7

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v2

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v8, v7

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v8, v7

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v4

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move-object v8, v7

    const/4 v9, 0x3

    aget v8, v8, v9

    move v9, v5

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 481
    :cond_2
    move-object v8, v7

    const/4 v9, 0x0

    move v10, v2

    aput v10, v8, v9

    .line 482
    move-object v8, v7

    const/4 v9, 0x1

    move v10, v3

    aput v10, v8, v9

    .line 483
    move-object v8, v7

    const/4 v9, 0x2

    move v10, v4

    aput v10, v8, v9

    .line 484
    move-object v8, v7

    const/4 v9, 0x3

    move v10, v5

    aput v10, v8, v9

    .line 485
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v8

    move-object v9, v6

    invoke-static {v9}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v9

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/prism/es2/GLContext;->uniform4f(IFFFF)V

    .line 487
    :cond_3
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "i0":I
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v5

    move-object v3, v5

    .line 277
    .local v3, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 278
    .line 288
    :goto_0
    return-void

    .line 280
    :cond_0
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 281
    move-object v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [I

    invoke-static {v5, v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 283
    :cond_1
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    move-object v4, v5

    .line 284
    .local v4, "values":[I
    move-object v5, v4

    const/4 v6, 0x0

    aget v5, v5, v6

    move v6, v2

    if-eq v5, v6, :cond_2

    .line 285
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v2

    aput v7, v5, v6

    .line 286
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    move-object v6, v3

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->uniform1i(II)V

    .line 288
    :cond_2
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "i0":I
    move v3, p3

    .local v3, "i1":I
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v6

    move-object v4, v6

    .line 303
    .local v4, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 304
    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 307
    move-object v6, v4

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-static {v6, v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 309
    :cond_1
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    check-cast v6, [I

    move-object v5, v6

    .line 310
    .local v5, "values":[I
    move-object v6, v5

    const/4 v7, 0x0

    aget v6, v6, v7

    move v7, v2

    if-ne v6, v7, :cond_2

    move-object v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    move v7, v3

    if-eq v6, v7, :cond_3

    .line 311
    :cond_2
    move-object v6, v5

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    .line 312
    move-object v6, v5

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    .line 313
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move-object v7, v4

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v7

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->uniform2i(III)V

    .line 315
    :cond_3
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;III)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "i0":I
    move v3, p3

    .local v3, "i1":I
    move/from16 v4, p4

    .local v4, "i2":I
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v7

    move-object v5, v7

    .line 331
    .local v5, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 332
    .line 344
    :goto_0
    return-void

    .line 334
    :cond_0
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 335
    move-object v7, v5

    const/4 v8, 0x3

    new-array v8, v8, [I

    invoke-static {v7, v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 337
    :cond_1
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    move-object v6, v7

    .line 338
    .local v6, "values":[I
    move-object v7, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_2

    move-object v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    move v8, v3

    if-ne v7, v8, :cond_2

    move-object v7, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v4

    if-eq v7, v8, :cond_3

    .line 339
    :cond_2
    move-object v7, v6

    const/4 v8, 0x0

    move v9, v2

    aput v9, v7, v8

    .line 340
    move-object v7, v6

    const/4 v8, 0x1

    move v9, v3

    aput v9, v7, v8

    .line 341
    move-object v7, v6

    const/4 v8, 0x2

    move v9, v4

    aput v9, v7, v8

    .line 342
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    move-object v8, v5

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v8

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/prism/es2/GLContext;->uniform3i(IIII)V

    .line 344
    :cond_3
    goto :goto_0
.end method

.method public setConstant(Ljava/lang/String;IIII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "i0":I
    move/from16 v3, p3

    .local v3, "i1":I
    move/from16 v4, p4

    .local v4, "i2":I
    move/from16 v5, p5

    .local v5, "i3":I
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v8

    move-object v6, v8

    .line 361
    .local v6, "uniform":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 362
    .line 375
    :goto_0
    return-void

    .line 364
    :cond_0
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 365
    move-object v8, v6

    const/4 v9, 0x4

    new-array v9, v9, [I

    invoke-static {v8, v9}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 367
    :cond_1
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    move-object v7, v8

    .line 368
    .local v7, "values":[I
    move-object v8, v7

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v2

    if-ne v8, v9, :cond_2

    move-object v8, v7

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v3

    if-ne v8, v9, :cond_2

    move-object v8, v7

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v4

    if-ne v8, v9, :cond_2

    move-object v8, v7

    const/4 v9, 0x3

    aget v8, v8, v9

    move v9, v5

    if-eq v8, v9, :cond_3

    .line 369
    :cond_2
    move-object v8, v7

    const/4 v9, 0x0

    move v10, v2

    aput v10, v8, v9

    .line 370
    move-object v8, v7

    const/4 v9, 0x1

    move v10, v3

    aput v10, v8, v9

    .line 371
    move-object v8, v7

    const/4 v9, 0x2

    move v10, v4

    aput v10, v8, v9

    .line 372
    move-object v8, v7

    const/4 v9, 0x3

    move v10, v5

    aput v10, v8, v9

    .line 373
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v8

    move-object v9, v6

    invoke-static {v9}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v9

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sun/prism/es2/GLContext;->uniform4i(IIIII)V

    .line 375
    :cond_3
    goto :goto_0
.end method

.method public setConstants(Ljava/lang/String;Ljava/nio/FloatBuffer;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "buf":Ljava/nio/FloatBuffer;
    move v3, p3

    .local v3, "off":I
    move v4, p4

    .local v4, "count":I
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    move v5, v6

    .line 525
    .local v5, "loc":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 526
    .line 529
    :goto_0
    return-void

    .line 528
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move v7, v5

    move v8, v4

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->uniform4fv(IILjava/nio/FloatBuffer;)V

    .line 529
    goto :goto_0
.end method

.method public setConstants(Ljava/lang/String;Ljava/nio/IntBuffer;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "buf":Ljava/nio/IntBuffer;
    move v3, p3

    .local v3, "off":I
    move v4, p4

    .local v4, "count":I
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v6

    move v5, v6

    .line 504
    .local v5, "loc":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 505
    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move v7, v5

    move v8, v4

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLContext;->uniform4iv(IILjava/nio/IntBuffer;)V

    .line 509
    goto :goto_0
.end method

.method public setMatrix(Ljava/lang/String;[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "buf":[F
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/prism/es2/ES2Shader;->getUniform(Ljava/lang/String;)Lcom/sun/prism/es2/ES2Shader$Uniform;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/prism/es2/ES2Shader$Uniform;->access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I

    move-result v4

    move v3, v4

    .line 542
    .local v3, "loc":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 543
    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->currentMatrix:[F

    if-nez v4, :cond_1

    .line 547
    move-object v4, v0

    const/16 v5, 0x10

    new-array v5, v5, [F

    iput-object v5, v4, Lcom/sun/prism/es2/ES2Shader;->currentMatrix:[F

    .line 550
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->currentMatrix:[F

    move-object v5, v2

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 551
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v4

    move v5, v3

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->uniformMatrix4fv(IZ[F)V

    .line 552
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Shader;->currentMatrix:[F

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    :cond_2
    goto :goto_0
.end method
