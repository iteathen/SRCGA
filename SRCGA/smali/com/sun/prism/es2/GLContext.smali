.class abstract Lcom/sun/prism/es2/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"


# static fields
.field private static final FBO_ID_NOCACHE:I = -0x2

.field private static final FBO_ID_UNSET:I = -0x1

.field static final GL_ALPHA:I = 0x2c

.field static final GL_BACK:I = 0x6e

.field static final GL_BGRA:I = 0x29

.field static final GL_CONSTANT_ALPHA:I = 0xc

.field static final GL_CONSTANT_COLOR:I = 0xa

.field static final GL_DST_ALPHA:I = 0x8

.field static final GL_DST_COLOR:I = 0x4

.field static final GL_FLOAT:I = 0x14

.field static final GL_FRONT:I = 0x6f

.field static final GL_LINEAR:I = 0x35

.field static final GL_LINEAR_MIPMAP_LINEAR:I = 0x37

.field static final GL_LUMINANCE:I = 0x2b

.field static final GL_MAX_FRAGMENT_UNIFORM_COMPONENTS:I = 0x78

.field static final GL_MAX_FRAGMENT_UNIFORM_VECTORS:I = 0x79

.field static final GL_MAX_TEXTURE_IMAGE_UNITS:I = 0x7a

.field static final GL_MAX_TEXTURE_SIZE:I = 0x7b

.field static final GL_MAX_VARYING_COMPONENTS:I = 0x7d

.field static final GL_MAX_VARYING_VECTORS:I = 0x7e

.field static final GL_MAX_VERTEX_ATTRIBS:I = 0x7c

.field static final GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS:I = 0x7f

.field static final GL_MAX_VERTEX_UNIFORM_COMPONENTS:I = 0x80

.field static final GL_MAX_VERTEX_UNIFORM_VECTORS:I = 0x81

.field static final GL_NEAREST:I = 0x34

.field static final GL_NEAREST_MIPMAP_NEAREST:I = 0x36

.field static final GL_NONE:I = 0x70

.field static final GL_ONE:I = 0x1

.field static final GL_ONE_MINUS_CONSTANT_ALPHA:I = 0xd

.field static final GL_ONE_MINUS_CONSTANT_COLOR:I = 0xb

.field static final GL_ONE_MINUS_DST_ALPHA:I = 0x9

.field static final GL_ONE_MINUS_DST_COLOR:I = 0x5

.field static final GL_ONE_MINUS_SRC_ALPHA:I = 0x7

.field static final GL_ONE_MINUS_SRC_COLOR:I = 0x3

.field static final GL_RGB:I = 0x2a

.field static final GL_RGBA:I = 0x28

.field static final GL_RGBA32F:I = 0x2d

.field static final GL_SRC_ALPHA:I = 0x6

.field static final GL_SRC_ALPHA_SATURATE:I = 0xe

.field static final GL_SRC_COLOR:I = 0x2

.field static final GL_TEXTURE_2D:I = 0x32

.field static final GL_TEXTURE_BINDING_2D:I = 0x33

.field static final GL_UNPACK_ALIGNMENT:I = 0x3c

.field static final GL_UNPACK_ROW_LENGTH:I = 0x3d

.field static final GL_UNPACK_SKIP_PIXELS:I = 0x3e

.field static final GL_UNPACK_SKIP_ROWS:I = 0x3f

.field static final GL_UNSIGNED_BYTE:I = 0x15

.field static final GL_UNSIGNED_INT_8_8_8_8:I = 0x17

.field static final GL_UNSIGNED_INT_8_8_8_8_REV:I = 0x16

.field static final GL_UNSIGNED_SHORT_8_8_APPLE:I = 0x18

.field static final GL_YCBCR_422_APPLE:I = 0x2e

.field static final GL_ZERO:I = 0x0

.field static final MAPTYPE_BUMP:I

.field static final MAPTYPE_DIFFUSE:I

.field static final MAPTYPE_SELFILLUM:I

.field static final MAPTYPE_SPECULAR:I

.field static final NUM_MATRIX_ELEMENTS:I = 0x10

.field static final WRAPMODE_CLAMP_TO_BORDER:I = 0x66

.field static final WRAPMODE_CLAMP_TO_EDGE:I = 0x65

.field static final WRAPMODE_REPEAT:I = 0x64


# instance fields
.field private activeTexUnit:I

.field private boundTextures:[I

.field private clampToZeroAvailable:Ljava/lang/Boolean;

.field private depthTest:Z

.field private maxSampleSize:I

.field private maxTextureSize:I

.field private msaa:Z

.field nativeCtxInfo:J

.field private nativeFBOID:I

.field private nonPowTwoExtAvailable:Ljava/lang/Boolean;

.field private viewportHeight:I

.field private viewportWidth:I

.field private viewportX:I

.field private viewportY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLContext;->MAPTYPE_DIFFUSE:I

    .line 111
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLContext;->MAPTYPE_SPECULAR:I

    .line 112
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->BUMP:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLContext;->MAPTYPE_BUMP:I

    .line 113
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLContext;->MAPTYPE_SELFILLUM:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/prism/es2/GLContext;->maxTextureSize:I

    .line 126
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    .line 129
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/es2/GLContext;->depthTest:Z

    .line 130
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/es2/GLContext;->msaa:Z

    .line 131
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/prism/es2/GLContext;->maxSampleSize:I

    .line 135
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    iput v2, v1, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    return-void

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static native nActiveTexture(JI)V
.end method

.method private static native nBindFBO(JI)V
.end method

.method private static native nBindTexture(JI)V
.end method

.method private static native nBlendFunc(II)V
.end method

.method private static native nBlit(JIIIIIIIIII)V
.end method

.method private static native nBuildNativeGeometryInt(JJ[FI[II)Z
.end method

.method private static native nBuildNativeGeometryShort(JJ[FI[SI)Z
.end method

.method private static native nClearBuffers(JFFFFZZZ)V
.end method

.method private static native nCompileShader(JLjava/lang/String;Z)I
.end method

.method private static native nCreateDepthBuffer(JIII)I
.end method

.method private static native nCreateES2Mesh(J)J
.end method

.method private static native nCreateES2MeshView(JJ)J
.end method

.method private static native nCreateES2PhongMaterial(J)J
.end method

.method private static native nCreateFBO(JI)I
.end method

.method private static native nCreateIndexBuffer16(J[SI)I
.end method

.method private static native nCreateProgram(JI[II[Ljava/lang/String;[I)I
.end method

.method private static native nCreateRenderBuffer(JIII)I
.end method

.method private static native nCreateTexture(JII)I
.end method

.method private static native nDeleteFBO(JI)V
.end method

.method private static native nDeleteRenderBuffer(JI)V
.end method

.method private static native nDeleteShader(JI)V
.end method

.method private static native nDeleteTexture(JI)V
.end method

.method private static native nDisableVertexAttributes(J)V
.end method

.method private static native nDisposeShaders(JII[I)V
.end method

.method private static native nDrawIndexedQuads(JI[F[B)V
.end method

.method private static native nDrawTriangleList(JI[F[B)V
.end method

.method private static native nEnableVertexAttributes(J)V
.end method

.method private static native nFinish()V
.end method

.method private static native nGenAndBindTexture()I
.end method

.method private static native nGetFBO()I
.end method

.method private static native nGetIntParam(I)I
.end method

.method private static native nGetMaxSampleSize()I
.end method

.method private static native nGetUniformLocation(JILjava/lang/String;)I
.end method

.method private static native nPixelStorei(II)V
.end method

.method private static native nReadPixelsByte(JILjava/nio/Buffer;[BIIII)Z
.end method

.method private static native nReadPixelsInt(JILjava/nio/Buffer;[IIIII)Z
.end method

.method private static native nReleaseES2Mesh(JJ)V
.end method

.method private static native nReleaseES2MeshView(JJ)V
.end method

.method private static native nReleaseES2PhongMaterial(JJ)V
.end method

.method private static native nRenderMeshView(JJ)V
.end method

.method private static native nScissorTest(JZIIII)V
.end method

.method private static native nSetAmbientLight(JJFFF)V
.end method

.method private static native nSetCullingMode(JJI)V
.end method

.method private static native nSetDepthTest(JZ)V
.end method

.method private static native nSetDeviceParametersFor2D(J)V
.end method

.method private static native nSetDeviceParametersFor3D(J)V
.end method

.method private static native nSetIndexBuffer(JI)V
.end method

.method private static native nSetMSAA(JZ)V
.end method

.method private static native nSetMap(JJII)V
.end method

.method private static native nSetMaterial(JJJ)V
.end method

.method private static native nSetPointLight(JJIFFFFFFF)V
.end method

.method private static native nSetSolidColor(JJFFFF)V
.end method

.method private static native nSetWireframe(JJZ)V
.end method

.method private static native nTexImage2D0(IIIIIIIILjava/lang/Object;IZ)Z
.end method

.method private static native nTexImage2D1(IIIIIIIILjava/lang/Object;IZ)Z
.end method

.method private static native nTexParamsMinMax(II)V
.end method

.method private static native nTexSubImage2D0(IIIIIIIILjava/lang/Object;I)V
.end method

.method private static native nTexSubImage2D1(IIIIIIIILjava/lang/Object;I)V
.end method

.method private static native nUniform1f(JIF)V
.end method

.method private static native nUniform1i(JII)V
.end method

.method private static native nUniform2f(JIFF)V
.end method

.method private static native nUniform2i(JIII)V
.end method

.method private static native nUniform3f(JIFFF)V
.end method

.method private static native nUniform3i(JIIII)V
.end method

.method private static native nUniform4f(JIFFFF)V
.end method

.method private static native nUniform4fv0(JIILjava/lang/Object;I)V
.end method

.method private static native nUniform4fv1(JIILjava/lang/Object;I)V
.end method

.method private static native nUniform4i(JIIIII)V
.end method

.method private static native nUniform4iv0(JIILjava/lang/Object;I)V
.end method

.method private static native nUniform4iv1(JIILjava/lang/Object;I)V
.end method

.method private static native nUniformMatrix4fv(JIZ[F)V
.end method

.method private static native nUpdateFilterState(JIZ)V
.end method

.method private static native nUpdateViewport(JIIII)V
.end method

.method private static native nUpdateWrapState(JII)V
.end method

.method private static native nUseProgram(JI)V
.end method


# virtual methods
.method activeTexture(I)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texUnit":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nActiveTexture(JI)V

    .line 265
    return-void
.end method

.method bindFBO(I)V
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "nativeFBOID":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    packed-switch v2, :pswitch_data_0

    .line 277
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 278
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nBindFBO(JI)V

    .line 279
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    .line 271
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nBindFBO(JI)V

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nBindFBO(JI)V

    .line 275
    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bindTexture(I)V
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texID":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nBindTexture(JI)V

    .line 287
    return-void
.end method

.method blendFunc(II)V
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "sFactor":I
    move v2, p2

    .local v2, "dFactor":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/prism/es2/GLContext;->nBlendFunc(II)V

    .line 291
    return-void
.end method

.method blitFBO(IIIIIIIIII)V
    .locals 24

    .prologue
    .line 409
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move/from16 v2, p1

    .local v2, "msaaFboID":I
    move/from16 v3, p2

    .local v3, "dstFboID":I
    move/from16 v4, p3

    .local v4, "srcX0":I
    move/from16 v5, p4

    .local v5, "srcY0":I
    move/from16 v6, p5

    .local v6, "srcX1":I
    move/from16 v7, p6

    .local v7, "srcY1":I
    move/from16 v8, p7

    .local v8, "dstX0":I
    move/from16 v9, p8

    .local v9, "dstY0":I
    move/from16 v10, p9

    .local v10, "dstX1":I
    move/from16 v11, p10

    .local v11, "dstY1":I
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-static/range {v12 .. v23}, Lcom/sun/prism/es2/GLContext;->nBlit(JIIIIIIIIII)V

    .line 412
    return-void
.end method

.method buildNativeGeometry(J[FI[II)Z
    .locals 17

    .prologue
    .line 763
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide/from16 v2, p1

    .local v2, "nativeHandle":J
    move-object/from16 v4, p3

    .local v4, "vertexBuffer":[F
    move/from16 v5, p4

    .local v5, "vertexBufferLength":I
    move-object/from16 v6, p5

    .local v6, "indexBuffer":[I
    move/from16 v7, p6

    .local v7, "indexBufferLength":I
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v10, v2

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/sun/prism/es2/GLContext;->nBuildNativeGeometryInt(JJ[FI[II)Z

    move-result v8

    move v1, v8

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return v1
.end method

.method buildNativeGeometry(J[FI[SI)Z
    .locals 17

    .prologue
    .line 757
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide/from16 v2, p1

    .local v2, "nativeHandle":J
    move-object/from16 v4, p3

    .local v4, "vertexBuffer":[F
    move/from16 v5, p4

    .local v5, "vertexBufferLength":I
    move-object/from16 v6, p5

    .local v6, "indexBuffer":[S
    move/from16 v7, p6

    .local v7, "indexBufferLength":I
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v10, v2

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/sun/prism/es2/GLContext;->nBuildNativeGeometryShort(JJ[FI[SI)Z

    move-result v8

    move v1, v8

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return v1
.end method

.method canClampToZero()Z
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->clampToZeroAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 311
    move-object v1, v0

    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->noClampToZero:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 312
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 311
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/prism/es2/GLContext;->clampToZeroAvailable:Ljava/lang/Boolean;

    .line 315
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->clampToZeroAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0

    .line 312
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_1
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    .line 313
    invoke-virtual {v2}, Lcom/sun/prism/es2/GLFactory;->isGL2()Z

    move-result v2

    goto :goto_0
.end method

.method canCreateNonPowTwoTextures()Z
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->nonPowTwoExtAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 299
    move-object v1, v0

    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->forcePow2:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 299
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/prism/es2/GLContext;->nonPowTwoExtAvailable:Ljava/lang/Boolean;

    .line 302
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->nonPowTwoExtAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0

    .line 300
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_1
    sget-object v2, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLFactory;->isNPOTSupported()Z

    move-result v2

    goto :goto_0
.end method

.method clearBuffers(Lcom/sun/prism/paint/Color;ZZZ)V
    .locals 19

    .prologue
    .line 320
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object/from16 v2, p1

    .local v2, "color":Lcom/sun/prism/paint/Color;
    move/from16 v3, p2

    .local v3, "clearColor":Z
    move/from16 v4, p3

    .local v4, "clearDepth":Z
    move/from16 v5, p4

    .local v5, "ignoreScissor":Z
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/prism/paint/Color;->getRedPremult()F

    move-result v10

    move v6, v10

    .line 321
    .local v6, "r":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/prism/paint/Color;->getGreenPremult()F

    move-result v10

    move v7, v10

    .line 322
    .local v7, "g":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/prism/paint/Color;->getBluePremult()F

    move-result v10

    move v8, v10

    .line 323
    .local v8, "b":F
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v10

    move v9, v10

    .line 324
    .local v9, "a":F
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-static/range {v10 .. v18}, Lcom/sun/prism/es2/GLContext;->nClearBuffers(JFFFFZZZ)V

    .line 326
    return-void
.end method

.method compileShader(Ljava/lang/String;Z)I
    .locals 8

    .prologue
    .line 333
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, p1

    .local v2, "shaderSource":Ljava/lang/String;
    move v3, p2

    .local v3, "vertex":Z
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nCompileShader(JLjava/lang/String;Z)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return v1
.end method

.method createDepthBuffer(III)I
    .locals 9

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "msaaSamples":I
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nCreateDepthBuffer(JIII)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method createES2Mesh()J
    .locals 4

    .prologue
    .line 748
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nCreateES2Mesh(J)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return-wide v1
.end method

.method createES2MeshView(J)J
    .locals 9

    .prologue
    .line 784
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeMeshInfo":J
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nCreateES2MeshView(JJ)J

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return-wide v1
.end method

.method createES2PhongMaterial()J
    .locals 4

    .prologue
    .line 768
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nCreateES2PhongMaterial(J)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return-wide v1
.end method

.method createFBO(I)I
    .locals 5

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texID":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    .line 352
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    .line 354
    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nCreateFBO(JI)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method createIndexBuffer16([S)I
    .locals 6

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, p1

    .local v1, "data":[S
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-object v4, v1

    move-object v5, v1

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sun/prism/es2/GLContext;->nCreateIndexBuffer16(J[SI)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method createProgram(I[I[Ljava/lang/String;[I)I
    .locals 15

    .prologue
    .line 365
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move/from16 v2, p1

    .local v2, "vertexShaderID":I
    move-object/from16 v3, p2

    .local v3, "fragmentShaderIDArr":[I
    move-object/from16 v4, p3

    .local v4, "attrs":[Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "indexs":[I
    move-object v8, v3

    if-nez v8, :cond_0

    .line 366
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: fragmentShaderIDArr is null"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    const/4 v8, 0x0

    move v1, v8

    .line 385
    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    :goto_0
    return v1

    .line 370
    .restart local v1    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_0
    const/4 v8, 0x1

    move v6, v8

    .line 371
    .local v6, "shaderSpecified":Z
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move-object v9, v3

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 372
    move-object v8, v3

    move v9, v7

    aget v8, v8, v9

    if-nez v8, :cond_5

    .line 373
    const/4 v8, 0x0

    move v6, v8

    .line 378
    :cond_1
    move v8, v2

    if-eqz v8, :cond_2

    move-object v8, v3

    array-length v8, v8

    if-eqz v8, :cond_2

    move v8, v6

    if-nez v8, :cond_3

    .line 380
    :cond_2
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Both vertexShader and fragmentShader(s) must be specified"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_3
    move-object v8, v4

    array-length v8, v8

    move-object v9, v5

    array-length v9, v9

    if-eq v8, v9, :cond_4

    .line 383
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "attrs.length must be equal to index.length"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    :cond_4
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    array-length v12, v12

    move-object v13, v4

    move-object v14, v5

    invoke-static/range {v8 .. v14}, Lcom/sun/prism/es2/GLContext;->nCreateProgram(JI[II[Ljava/lang/String;[I)I

    move-result v8

    move v1, v8

    goto :goto_0

    .line 371
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method createRenderBuffer(III)I
    .locals 9

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "msaaSamples":I
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nCreateRenderBuffer(JIII)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method createTexture(II)I
    .locals 8

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "width":I
    move v3, p2

    .local v3, "height":I
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nCreateTexture(JII)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return v1
.end method

.method deleteFBO(I)V
    .locals 5

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "fboID":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nDeleteFBO(JI)V

    .line 399
    return-void
.end method

.method deleteRenderBuffer(I)V
    .locals 5

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "dbID":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nDeleteRenderBuffer(JI)V

    .line 395
    return-void
.end method

.method deleteShader(I)V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "shadeID":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nDeleteShader(JI)V

    .line 403
    return-void
.end method

.method deleteTexture(I)V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "tID":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nDeleteTexture(JI)V

    .line 416
    return-void
.end method

.method disableVertexAttributes()V
    .locals 4

    .prologue
    .line 720
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nDisableVertexAttributes(J)V

    .line 721
    return-void
.end method

.method disposeShaders(II[I)V
    .locals 9

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "pID":I
    move v2, p2

    .local v2, "vID":I
    move-object v3, p3

    .local v3, "fID":[I
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nDisposeShaders(JII[I)V

    .line 420
    return-void
.end method

.method drawIndexedQuads([F[BI)V
    .locals 9

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, p2

    .local v2, "colors":[B
    move v3, p3

    .local v3, "numVertices":I
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v3

    move-object v7, v1

    move-object v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nDrawIndexedQuads(JI[F[B)V

    .line 725
    return-void
.end method

.method drawTriangleList(I[F[B)V
    .locals 9

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "numTriangles":I
    move-object v2, p2

    .local v2, "fData":[F
    move-object v3, p3

    .local v3, "cData":[B
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nDrawTriangleList(JI[F[B)V

    .line 729
    return-void
.end method

.method enableVertexAttributes()V
    .locals 4

    .prologue
    .line 716
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nEnableVertexAttributes(J)V

    .line 717
    return-void
.end method

.method finish()V
    .locals 0

    .prologue
    .line 423
    invoke-static {}, Lcom/sun/prism/es2/GLContext;->nFinish()V

    .line 424
    return-void
.end method

.method genAndBindTexture()I
    .locals 5

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    invoke-static {}, Lcom/sun/prism/es2/GLContext;->nGenAndBindTexture()I

    move-result v2

    move v1, v2

    .line 428
    .local v1, "texID":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/GLContext;->activeTexUnit:I

    move v4, v1

    aput v4, v2, v3

    .line 429
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getActiveTextureUnit()I
    .locals 2

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->activeTexUnit:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getBoundFBO()I
    .locals 3

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    packed-switch v1, :pswitch_data_0

    .line 440
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :goto_0
    return v0

    .line 435
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :pswitch_0
    move-object v1, v0

    invoke-static {}, Lcom/sun/prism/es2/GLContext;->nGetFBO()I

    move-result v2

    iput v2, v1, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    .line 436
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->nativeFBOID:I

    move v0, v1

    goto :goto_0

    .line 438
    :pswitch_1
    invoke-static {}, Lcom/sun/prism/es2/GLContext;->nGetFBO()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getBoundTexture()I
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/GLContext;->activeTexUnit:I

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getBoundTexture(I)I
    .locals 4

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "unit":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getIntParam(I)I
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "param":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/prism/es2/GLContext;->nGetIntParam(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getMaxSampleSize()I
    .locals 3

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->maxSampleSize:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 507
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->maxSampleSize:I

    move v0, v1

    .line 510
    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :goto_0
    return v0

    .line 509
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_0
    move-object v1, v0

    sget-boolean v2, Lcom/sun/prism/es2/ES2Pipeline;->msaa:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sun/prism/es2/GLContext;->nGetMaxSampleSize()I

    move-result v2

    :goto_1
    iput v2, v1, Lcom/sun/prism/es2/GLContext;->maxSampleSize:I

    .line 510
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->maxSampleSize:I

    move v0, v1

    goto :goto_0

    .line 509
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getMaxTextureSize()I
    .locals 6

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->maxTextureSize:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 515
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/GLContext;->maxTextureSize:I

    move v0, v1

    .line 517
    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v2

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/prism/es2/GLContext;->maxTextureSize:I

    move v0, v1

    goto :goto_0
.end method

.method getNativeCtxInfo()J
    .locals 3

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return-wide v0
.end method

.method abstract getNativeHandle()J
.end method

.method getNumBoundTexture()I
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method getSampleSize()I
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->getMaxSampleSize()I

    move-result v2

    move v1, v2

    .line 502
    .local v1, "maxSamples":I
    move v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_0
    move v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method

.method getUniformLocation(ILjava/lang/String;)I
    .locals 8

    .prologue
    .line 521
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "programID":I
    move-object v3, p2

    .local v3, "name":Ljava/lang/String;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nGetUniformLocation(JILjava/lang/String;)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/GLContext;
    return v1
.end method

.method isShaderCompilerSupported()Z
    .locals 2

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0
.end method

.method abstract makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V
.end method

.method pixelStorei(II)V
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "pname":I
    move v2, p2

    .local v2, "param":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/prism/es2/GLContext;->nPixelStorei(II)V

    .line 534
    return-void
.end method

.method readPixels(Ljava/nio/Buffer;IIII)Z
    .locals 20

    .prologue
    .line 537
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-object/from16 v1, p1

    .local v1, "buffer":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    const/4 v10, 0x0

    move v6, v10

    .line 538
    .local v6, "res":Z
    move-object v10, v1

    instance-of v10, v10, Ljava/nio/ByteBuffer;

    if-eqz v10, :cond_1

    .line 539
    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    move-object v7, v10

    .line 540
    .local v7, "buf":Ljava/nio/ByteBuffer;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    :goto_0
    move-object v8, v10

    .line 541
    .local v8, "arr":[B
    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    move v9, v10

    .line 542
    .local v9, "length":I
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v12, v9

    move-object v13, v1

    move-object v14, v8

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-static/range {v10 .. v18}, Lcom/sun/prism/es2/GLContext;->nReadPixelsByte(JILjava/nio/Buffer;[BIIII)Z

    move-result v10

    move v6, v10

    .line 556
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "arr":[B
    :goto_1
    move v10, v6

    move v0, v10

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0

    .line 540
    .end local v9    # "length":I
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    .restart local v7    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 543
    .end local v7    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    move-object v10, v1

    instance-of v10, v10, Ljava/nio/IntBuffer;

    if-eqz v10, :cond_3

    .line 544
    move-object v10, v1

    check-cast v10, Ljava/nio/IntBuffer;

    move-object v7, v10

    .line 545
    .local v7, "buf":Ljava/nio/IntBuffer;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    :goto_2
    move-object v8, v10

    .line 546
    .local v8, "arr":[I
    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->capacity()I

    move-result v10

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move v9, v10

    .line 551
    .restart local v9    # "length":I
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v12, v9

    move-object v13, v1

    move-object v14, v8

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-static/range {v10 .. v18}, Lcom/sun/prism/es2/GLContext;->nReadPixelsInt(JILjava/nio/Buffer;[IIIII)Z

    move-result v10

    move v6, v10

    .line 552
    goto :goto_1

    .line 545
    .end local v8    # "arr":[I
    .end local v9    # "length":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 553
    .end local v7    # "buf":Ljava/nio/IntBuffer;
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readPixel: pixel\'s buffer type is not supported: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method releaseES2Mesh(J)V
    .locals 9

    .prologue
    .line 752
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nReleaseES2Mesh(JJ)V

    .line 753
    return-void
.end method

.method releaseES2MeshView(J)V
    .locals 9

    .prologue
    .line 788
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nReleaseES2MeshView(JJ)V

    .line 789
    return-void
.end method

.method releaseES2PhongMaterial(J)V
    .locals 9

    .prologue
    .line 772
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeHandle":J
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nReleaseES2PhongMaterial(JJ)V

    .line 773
    return-void
.end method

.method renderMeshView(J)V
    .locals 9

    .prologue
    .line 822
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeMeshViewInfo":J
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nRenderMeshView(JJ)V

    .line 823
    return-void
.end method

.method scissorTest(ZIIII)V
    .locals 13

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "enable":Z
    move v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/sun/prism/es2/GLContext;->nScissorTest(JZIIII)V

    .line 561
    return-void
.end method

.method setActiveTextureUnit(I)V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "unit":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->activeTexture(I)V

    .line 458
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/GLContext;->activeTexUnit:I

    .line 459
    return-void
.end method

.method setAmbientLight(JFFF)V
    .locals 13

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v1, p1

    .local v1, "nativeMeshViewInfo":J
    move/from16 v3, p3

    .local v3, "r":F
    move/from16 v4, p4

    .local v4, "g":F
    move/from16 v5, p5

    .local v5, "b":F
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v8, v1

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/sun/prism/es2/GLContext;->nSetAmbientLight(JJFFF)V

    .line 815
    return-void
.end method

.method setBoundTexture(I)V
    .locals 5

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texid":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->bindTexture(I)V

    .line 484
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/GLContext;->boundTextures:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/GLContext;->activeTexUnit:I

    move v4, v1

    aput v4, v2, v3

    .line 485
    return-void
.end method

.method setCullingMode(JI)V
    .locals 13

    .prologue
    .line 793
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeMeshViewInfo":J
    move/from16 v4, p3

    .local v4, "cullMode":I
    move v6, v4

    sget v7, Lcom/sun/prism/MeshView;->CULL_NONE:I

    if-ne v6, v7, :cond_0

    .line 794
    const/16 v6, 0x70

    move v5, v6

    .line 802
    .local v5, "cm":I
    :goto_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v8, v2

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sun/prism/es2/GLContext;->nSetCullingMode(JJI)V

    .line 803
    return-void

    .line 795
    .end local v5    # "cm":I
    :cond_0
    move v6, v4

    sget v7, Lcom/sun/prism/MeshView;->CULL_BACK:I

    if-ne v6, v7, :cond_1

    .line 796
    const/16 v6, 0x6e

    move v5, v6

    .restart local v5    # "cm":I
    goto :goto_0

    .line 797
    .end local v5    # "cm":I
    :cond_1
    move v6, v4

    sget v7, Lcom/sun/prism/MeshView;->CULL_FRONT:I

    if-ne v6, v7, :cond_2

    .line 798
    const/16 v6, 0x6f

    move v5, v6

    .restart local v5    # "cm":I
    goto :goto_0

    .line 800
    .end local v5    # "cm":I
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal value for CullMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method setDeviceParametersFor2D()V
    .locals 4

    .prologue
    .line 740
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nSetDeviceParametersFor2D(J)V

    .line 741
    return-void
.end method

.method setDeviceParametersFor3D()V
    .locals 4

    .prologue
    .line 744
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/GLContext;->nSetDeviceParametersFor3D(J)V

    .line 745
    return-void
.end method

.method setIndexBuffer(I)V
    .locals 5

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "ib":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nSetIndexBuffer(JI)V

    .line 737
    return-void
.end method

.method setMap(JII)V
    .locals 13

    .prologue
    .line 780
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativePhongMaterial":J
    move/from16 v4, p3

    .local v4, "mapType":I
    move/from16 v5, p4

    .local v5, "texID":I
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v8, v2

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nSetMap(JJII)V

    .line 781
    return-void
.end method

.method setMaterial(JJ)V
    .locals 13

    .prologue
    .line 806
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v2, p1

    .local v2, "nativeMeshViewInfo":J
    move-wide/from16 v4, p3

    .local v4, "nativePhongMaterialInfo":J
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v8, v2

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nSetMaterial(JJJ)V

    .line 807
    return-void
.end method

.method setPointLight(JIFFFFFFF)V
    .locals 25

    .prologue
    .line 818
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide/from16 v2, p1

    .local v2, "nativeMeshViewInfo":J
    move/from16 v4, p3

    .local v4, "index":I
    move/from16 v5, p4

    .local v5, "x":F
    move/from16 v6, p5

    .local v6, "y":F
    move/from16 v7, p6

    .local v7, "z":F
    move/from16 v8, p7

    .local v8, "r":F
    move/from16 v9, p8

    .local v9, "g":F
    move/from16 v10, p9

    .local v10, "b":F
    move/from16 v11, p10

    .local v11, "w":F
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v14, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-static/range {v12 .. v23}, Lcom/sun/prism/es2/GLContext;->nSetPointLight(JJIFFFFFFF)V

    .line 819
    return-void
.end method

.method setShaderProgram(I)V
    .locals 5

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "progid":I
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nUseProgram(JI)V

    .line 565
    return-void
.end method

.method setSolidColor(JFFFF)V
    .locals 17

    .prologue
    .line 776
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move-wide/from16 v2, p1

    .local v2, "nativePhongMaterial":J
    move/from16 v4, p3

    .local v4, "r":F
    move/from16 v5, p4

    .local v5, "g":F
    move/from16 v6, p5

    .local v6, "b":F
    move/from16 v7, p6

    .local v7, "a":F
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v10, v2

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/sun/prism/es2/GLContext;->nSetSolidColor(JJFFFF)V

    .line 777
    return-void
.end method

.method setWireframe(JZ)V
    .locals 9

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move-wide v1, p1

    .local v1, "nativeMeshViewInfo":J
    move v3, p3

    .local v3, "wireframe":Z
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move-wide v6, v1

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nSetWireframe(JJZ)V

    .line 811
    return-void
.end method

.method texImage2D(IIIIIIIILjava/nio/Buffer;Z)Z
    .locals 24

    .prologue
    .line 581
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move/from16 v1, p1

    .local v1, "target":I
    move/from16 v2, p2

    .local v2, "level":I
    move/from16 v3, p3

    .local v3, "internalFormat":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "border":I
    move/from16 v7, p7

    .local v7, "format":I
    move/from16 v8, p8

    .local v8, "type":I
    move-object/from16 v9, p9

    .local v9, "pixels":Ljava/nio/Buffer;
    move/from16 v10, p10

    .local v10, "useMipmap":Z
    move-object v13, v9

    invoke-static {v13}, Lcom/sun/prism/es2/BufferFactory;->isDirect(Ljava/lang/Object;)Z

    move-result v13

    move v12, v13

    .line 582
    .local v12, "direct":Z
    move v13, v12

    if-eqz v13, :cond_0

    .line 583
    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v9

    .line 584
    invoke-static/range {v22 .. v22}, Lcom/sun/prism/es2/BufferFactory;->getDirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v22

    move/from16 v23, v10

    .line 583
    invoke-static/range {v13 .. v23}, Lcom/sun/prism/es2/GLContext;->nTexImage2D0(IIIIIIIILjava/lang/Object;IZ)Z

    move-result v13

    move v11, v13

    .line 590
    .local v11, "result":Z
    :goto_0
    move v13, v11

    move v0, v13

    .end local v0    # "this":Lcom/sun/prism/es2/GLContext;
    return v0

    .line 586
    .end local v11    # "result":Z
    .restart local v0    # "this":Lcom/sun/prism/es2/GLContext;
    :cond_0
    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    .line 587
    invoke-static/range {v21 .. v21}, Lcom/sun/prism/es2/BufferFactory;->getArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v9

    .line 588
    invoke-static/range {v22 .. v22}, Lcom/sun/prism/es2/BufferFactory;->getIndirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v22

    move/from16 v23, v10

    .line 586
    invoke-static/range {v13 .. v23}, Lcom/sun/prism/es2/GLContext;->nTexImage2D1(IIIIIIIILjava/lang/Object;IZ)Z

    move-result v13

    move v11, v13

    .restart local v11    # "result":Z
    goto :goto_0
.end method

.method texParamsMinMax(IZ)V
    .locals 7

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "pname":I
    move v2, p2

    .local v2, "useMipmap":Z
    move v5, v1

    move v3, v5

    .line 569
    .local v3, "min":I
    move v5, v1

    move v4, v5

    .line 570
    .local v4, "max":I
    move v5, v2

    if-eqz v5, :cond_0

    .line 571
    move v5, v3

    const/16 v6, 0x35

    if-ne v5, v6, :cond_1

    const/16 v5, 0x37

    :goto_0
    move v3, v5

    .line 574
    :cond_0
    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/prism/es2/GLContext;->nTexParamsMinMax(II)V

    .line 575
    return-void

    .line 571
    :cond_1
    const/16 v5, 0x36

    goto :goto_0
.end method

.method texSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 21

    .prologue
    .line 596
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move/from16 v1, p1

    .local v1, "target":I
    move/from16 v2, p2

    .local v2, "level":I
    move/from16 v3, p3

    .local v3, "xoffset":I
    move/from16 v4, p4

    .local v4, "yoffset":I
    move/from16 v5, p5

    .local v5, "width":I
    move/from16 v6, p6

    .local v6, "height":I
    move/from16 v7, p7

    .local v7, "format":I
    move/from16 v8, p8

    .local v8, "type":I
    move-object/from16 v9, p9

    .local v9, "pixels":Ljava/nio/Buffer;
    move-object v11, v9

    invoke-static {v11}, Lcom/sun/prism/es2/BufferFactory;->isDirect(Ljava/lang/Object;)Z

    move-result v11

    move v10, v11

    .line 597
    .local v10, "direct":Z
    move v11, v10

    if-eqz v11, :cond_0

    .line 598
    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v9

    .line 600
    invoke-static/range {v20 .. v20}, Lcom/sun/prism/es2/BufferFactory;->getDirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v20

    .line 598
    invoke-static/range {v11 .. v20}, Lcom/sun/prism/es2/GLContext;->nTexSubImage2D0(IIIIIIIILjava/lang/Object;I)V

    .line 606
    :goto_0
    return-void

    .line 602
    :cond_0
    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 603
    invoke-static/range {v19 .. v19}, Lcom/sun/prism/es2/BufferFactory;->getArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v9

    .line 604
    invoke-static/range {v20 .. v20}, Lcom/sun/prism/es2/BufferFactory;->getIndirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v20

    .line 602
    invoke-static/range {v11 .. v20}, Lcom/sun/prism/es2/GLContext;->nTexSubImage2D1(IIIIIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method uniform1f(IF)V
    .locals 8

    .prologue
    .line 658
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "v0":F
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nUniform1f(JIF)V

    .line 659
    return-void
.end method

.method uniform1i(II)V
    .locals 8

    .prologue
    .line 685
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "v0":I
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nUniform1i(JII)V

    .line 686
    return-void
.end method

.method uniform2f(IFF)V
    .locals 9

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "location":I
    move v2, p2

    .local v2, "v0":F
    move v3, p3

    .local v3, "v1":F
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nUniform2f(JIFF)V

    .line 663
    return-void
.end method

.method uniform2i(III)V
    .locals 9

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "location":I
    move v2, p2

    .local v2, "v0":I
    move v3, p3

    .local v3, "v1":I
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nUniform2i(JIII)V

    .line 690
    return-void
.end method

.method uniform3f(IFFF)V
    .locals 12

    .prologue
    .line 666
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "v0":F
    move v4, p3

    .local v4, "v1":F
    move/from16 v5, p4

    .local v5, "v2":F
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform3f(JIFFF)V

    .line 667
    return-void
.end method

.method uniform3i(IIII)V
    .locals 12

    .prologue
    .line 693
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "v0":I
    move v4, p3

    .local v4, "v1":I
    move/from16 v5, p4

    .local v5, "v2":I
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform3i(JIIII)V

    .line 694
    return-void
.end method

.method uniform4f(IFFFF)V
    .locals 13

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "location":I
    move v2, p2

    .local v2, "v0":F
    move/from16 v3, p3

    .local v3, "v1":F
    move/from16 v4, p4

    .local v4, "v2":F
    move/from16 v5, p5

    .local v5, "v3":F
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/sun/prism/es2/GLContext;->nUniform4f(JIFFFF)V

    .line 671
    return-void
.end method

.method uniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 12

    .prologue
    .line 674
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "count":I
    move-object v4, p3

    .local v4, "value":Ljava/nio/FloatBuffer;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/BufferFactory;->isDirect(Ljava/lang/Object;)Z

    move-result v6

    move v5, v6

    .line 675
    .local v5, "direct":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 676
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v4

    .line 677
    invoke-static {v11}, Lcom/sun/prism/es2/BufferFactory;->getDirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v11

    .line 676
    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform4fv0(JIILjava/lang/Object;I)V

    .line 682
    :goto_0
    return-void

    .line 679
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-static {v10}, Lcom/sun/prism/es2/BufferFactory;->getArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v4

    .line 680
    invoke-static {v11}, Lcom/sun/prism/es2/BufferFactory;->getIndirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v11

    .line 679
    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform4fv1(JIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method uniform4i(IIIII)V
    .locals 13

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "location":I
    move v2, p2

    .local v2, "v0":I
    move/from16 v3, p3

    .local v3, "v1":I
    move/from16 v4, p4

    .local v4, "v2":I
    move/from16 v5, p5

    .local v5, "v3":I
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/sun/prism/es2/GLContext;->nUniform4i(JIIIII)V

    .line 698
    return-void
.end method

.method uniform4iv(IILjava/nio/IntBuffer;)V
    .locals 12

    .prologue
    .line 701
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "location":I
    move v3, p2

    .local v3, "count":I
    move-object v4, p3

    .local v4, "value":Ljava/nio/IntBuffer;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/prism/es2/BufferFactory;->isDirect(Ljava/lang/Object;)Z

    move-result v6

    move v5, v6

    .line 702
    .local v5, "direct":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 703
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v4

    .line 704
    invoke-static {v11}, Lcom/sun/prism/es2/BufferFactory;->getDirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v11

    .line 703
    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform4iv0(JIILjava/lang/Object;I)V

    .line 709
    :goto_0
    return-void

    .line 706
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-static {v10}, Lcom/sun/prism/es2/BufferFactory;->getArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v4

    .line 707
    invoke-static {v11}, Lcom/sun/prism/es2/BufferFactory;->getIndirectBufferByteOffset(Ljava/lang/Object;)I

    move-result v11

    .line 706
    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUniform4iv1(JIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method uniformMatrix4fv(IZ[F)V
    .locals 9

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "location":I
    move v2, p2

    .local v2, "transpose":Z
    move-object v3, p3

    .local v3, "values":[F
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nUniformMatrix4fv(JIZ[F)V

    .line 713
    return-void
.end method

.method updateActiveTextureUnit(I)V
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "unit":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLContext;->getActiveTextureUnit()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 465
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 467
    :cond_0
    return-void
.end method

.method updateBoundTexture(I)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texid":I
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 491
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 493
    :cond_0
    return-void
.end method

.method updateFilterState(IZ)V
    .locals 8

    .prologue
    .line 631
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLContext;
    move v2, p1

    .local v2, "texID":I
    move v3, p2

    .local v3, "linearFilter":Z
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nUpdateFilterState(JIZ)V

    .line 632
    return-void
.end method

.method updateMSAAState(Z)V
    .locals 5

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "msaa":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/prism/es2/GLContext;->msaa:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 625
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->nSetMSAA(JZ)V

    .line 626
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/GLContext;->msaa:Z

    .line 628
    :cond_0
    return-void
.end method

.method updateViewportAndDepthTest(IIIIZ)V
    .locals 12

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move/from16 v5, p5

    .local v5, "depthTest":Z
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/es2/GLContext;->viewportX:I

    move v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/es2/GLContext;->viewportY:I

    move v7, v2

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/es2/GLContext;->viewportWidth:I

    move v7, v3

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/es2/GLContext;->viewportHeight:I

    move v7, v4

    if-eq v6, v7, :cond_1

    .line 611
    :cond_0
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/prism/es2/GLContext;->viewportX:I

    .line 612
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/prism/es2/GLContext;->viewportY:I

    .line 613
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/prism/es2/GLContext;->viewportWidth:I

    .line 614
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/prism/es2/GLContext;->viewportHeight:I

    .line 615
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-static/range {v6 .. v11}, Lcom/sun/prism/es2/GLContext;->nUpdateViewport(JIIII)V

    .line 617
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/prism/es2/GLContext;->depthTest:Z

    move v7, v5

    if-eq v6, v7, :cond_2

    .line 618
    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v8, v5

    invoke-static {v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->nSetDepthTest(JZ)V

    .line 619
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/sun/prism/es2/GLContext;->depthTest:Z

    .line 621
    :cond_2
    return-void
.end method

.method updateWrapState(ILcom/sun/prism/Texture$WrapMode;)V
    .locals 9

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLContext;
    move v1, p1

    .local v1, "texID":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    sget-object v4, Lcom/sun/prism/es2/GLContext$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 652
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized wrap mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :pswitch_0
    const/16 v4, 0x64

    move v3, v4

    .line 654
    .local v3, "wm":I
    :goto_0
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/GLContext;->nativeCtxInfo:J

    move v6, v1

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->nUpdateWrapState(JII)V

    .line 655
    .end local v3    # "wm":I
    :goto_1
    return-void

    .line 644
    :pswitch_1
    const/16 v4, 0x65

    move v3, v4

    .line 645
    .restart local v3    # "wm":I
    goto :goto_0

    .line 647
    .end local v3    # "wm":I
    :pswitch_2
    const/16 v4, 0x66

    move v3, v4

    .line 648
    .restart local v3    # "wm":I
    goto :goto_0

    .line 650
    .end local v3    # "wm":I
    :pswitch_3
    goto :goto_1

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
