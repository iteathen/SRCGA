.class public Lcom/sun/prism/null3d/DummyShader;
.super Lcom/sun/prism/null3d/DummyResource;
.source "DummyShader.java"

# interfaces
.implements Lcom/sun/prism/ps/Shader;


# instance fields
.field final name:Ljava/lang/String;

.field final registers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/prism/null3d/DummyContext;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyShader;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/null3d/DummyResource;-><init>(Lcom/sun/prism/null3d/DummyContext;)V

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/null3d/DummyShader;->registers:Ljava/util/Map;

    .line 43
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/null3d/DummyShader;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sun/prism/null3d/DummyContext;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/null3d/DummyContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyShader;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "registers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/null3d/DummyResource;-><init>(Lcom/sun/prism/null3d/DummyContext;)V

    .line 49
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/null3d/DummyShader;->registers:Ljava/util/Map;

    .line 50
    move-object v3, v0

    const-string v4, "null"

    iput-object v4, v3, Lcom/sun/prism/null3d/DummyShader;->name:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyShader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyShader;
    return v0
.end method

.method public setConstant(Ljava/lang/String;F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f0"    # F

    .prologue
    .line 77
    return-void
.end method

.method public setConstant(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f0"    # F
    .param p3, "f1"    # F

    .prologue
    .line 80
    return-void
.end method

.method public setConstant(Ljava/lang/String;FFF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f0"    # F
    .param p3, "f1"    # F
    .param p4, "f2"    # F

    .prologue
    .line 83
    return-void
.end method

.method public setConstant(Ljava/lang/String;FFFF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f0"    # F
    .param p3, "f1"    # F
    .param p4, "f2"    # F
    .param p5, "f3"    # F

    .prologue
    .line 86
    return-void
.end method

.method public setConstant(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i0"    # I

    .prologue
    .line 62
    return-void
.end method

.method public setConstant(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i0"    # I
    .param p3, "i1"    # I

    .prologue
    .line 65
    return-void
.end method

.method public setConstant(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i0"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 68
    return-void
.end method

.method public setConstant(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i0"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I

    .prologue
    .line 71
    return-void
.end method

.method public setConstants(Ljava/lang/String;Ljava/nio/FloatBuffer;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/nio/FloatBuffer;
    .param p3, "off"    # I
    .param p4, "count"    # I

    .prologue
    .line 89
    return-void
.end method

.method public setConstants(Ljava/lang/String;Ljava/nio/IntBuffer;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/nio/IntBuffer;
    .param p3, "off"    # I
    .param p4, "count"    # I

    .prologue
    .line 74
    return-void
.end method
