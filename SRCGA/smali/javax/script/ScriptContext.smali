.class public interface abstract Ljavax/script/ScriptContext;
.super Ljava/lang/Object;
.source "ScriptContext.java"


# static fields
.field public static final ENGINE_SCOPE:I = 0x64

.field public static final GLOBAL_SCOPE:I = 0xc8


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttribute(Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract getAttributesScope(Ljava/lang/String;)I
.end method

.method public abstract getBindings(I)Ljavax/script/Bindings;
.end method

.method public abstract getErrorWriter()Ljava/io/Writer;
.end method

.method public abstract getReader()Ljava/io/Reader;
.end method

.method public abstract getScopes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWriter()Ljava/io/Writer;
.end method

.method public abstract removeAttribute(Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V
.end method

.method public abstract setBindings(Ljavax/script/Bindings;I)V
.end method

.method public abstract setErrorWriter(Ljava/io/Writer;)V
.end method

.method public abstract setReader(Ljava/io/Reader;)V
.end method

.method public abstract setWriter(Ljava/io/Writer;)V
.end method
