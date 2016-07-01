.class public abstract Ljavax/script/CompiledScript;
.super Ljava/lang/Object;
.source "CompiledScript.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavax/script/CompiledScript;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavax/script/CompiledScript;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavax/script/CompiledScript;->getEngine()Ljavax/script/ScriptEngine;

    move-result-object v2

    invoke-interface {v2}, Ljavax/script/ScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/script/CompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/CompiledScript;
    return-object v0
.end method

.method public eval(Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavax/script/CompiledScript;
    move-object v1, p1

    .local v1, "bindings":Ljavax/script/Bindings;
    move-object v4, v0

    invoke-virtual {v4}, Ljavax/script/CompiledScript;->getEngine()Ljavax/script/ScriptEngine;

    move-result-object v4

    invoke-interface {v4}, Ljavax/script/ScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v4

    move-object v2, v4

    .line 81
    .local v2, "ctxt":Ljavax/script/ScriptContext;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Ljavax/script/SimpleScriptContext;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavax/script/SimpleScriptContext;-><init>()V

    move-object v3, v4

    .line 83
    .local v3, "tempctxt":Ljavax/script/SimpleScriptContext;
    move-object v4, v3

    move-object v5, v1

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 84
    move-object v4, v3

    move-object v5, v2

    const/16 v6, 0xc8

    invoke-interface {v5, v6}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 86
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setWriter(Ljava/io/Writer;)V

    .line 87
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getReader()Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setReader(Ljava/io/Reader;)V

    .line 88
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setErrorWriter(Ljava/io/Writer;)V

    .line 89
    move-object v4, v3

    move-object v2, v4

    .line 92
    .end local v3    # "tempctxt":Ljavax/script/SimpleScriptContext;
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavax/script/CompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavax/script/CompiledScript;
    return-object v0
.end method

.method public abstract eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract getEngine()Ljavax/script/ScriptEngine;
.end method
