.class public Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
.super Ljava/lang/Object;
.source "ES2ShaderSource.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/hw/ShaderSource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
    sget-object v1, Lcom/sun/scenario/effect/Effect$AccelType;->OPENGL:Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
    return-object v0
.end method

.method public loadSource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glsl/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".frag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/es2/ES2ShaderSource;
    return-object v0
.end method
