.class public interface abstract Lcom/sun/prism/ps/ShaderFactory;
.super Ljava/lang/Object;
.source "ShaderFactory.java"

# interfaces
.implements Lcom/sun/prism/ResourceFactory;


# virtual methods
.method public abstract createShader(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZZ)Lcom/sun/prism/ps/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;IZZ)",
            "Lcom/sun/prism/ps/Shader;"
        }
    .end annotation
.end method

.method public abstract createStockShader(Ljava/lang/String;)Lcom/sun/prism/ps/Shader;
.end method
