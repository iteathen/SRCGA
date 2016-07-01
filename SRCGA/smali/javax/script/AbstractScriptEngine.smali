.class public abstract Ljavax/script/AbstractScriptEngine;
.super Ljava/lang/Object;
.source "AbstractScriptEngine.java"

# interfaces
.implements Ljavax/script/ScriptEngine;


# instance fields
.field protected context:Ljavax/script/ScriptContext;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v1, v0

    new-instance v2, Ljavax/script/SimpleScriptContext;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavax/script/SimpleScriptContext;-><init>()V

    iput-object v2, v1, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavax/script/Bindings;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "n":Ljavax/script/Bindings;
    move-object v2, v0

    invoke-direct {v2}, Ljavax/script/AbstractScriptEngine;-><init>()V

    .line 78
    move-object v2, v1

    if-nez v2, :cond_0

    .line 79
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "n is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    move-object v3, v1

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 82
    return-void
.end method


# virtual methods
.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-virtual {v2, v3, v4}, Ljavax/script/AbstractScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "bindings":Ljavax/script/Bindings;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavax/script/AbstractScriptEngine;->getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;

    move-result-object v4

    move-object v3, v4

    .line 212
    .local v3, "ctxt":Ljavax/script/ScriptContext;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavax/script/AbstractScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "script":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-virtual {v2, v3, v4}, Ljavax/script/AbstractScriptEngine;->eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "script":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bindings":Ljavax/script/Bindings;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavax/script/AbstractScriptEngine;->getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;

    move-result-object v4

    move-object v3, v4

    .line 233
    .local v3, "ctxt":Ljavax/script/ScriptContext;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavax/script/AbstractScriptEngine;->eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v3

    move-object v2, v3

    .line 183
    .local v2, "nn":Ljavax/script/Bindings;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 187
    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavax/script/AbstractScriptEngine;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getBindings(I)Ljavax/script/Bindings;
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move v1, p1

    .local v1, "scope":I
    move v2, v1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 121
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    const/16 v3, 0xc8

    invoke-interface {v2, v3}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v2

    move-object v0, v2

    .line 123
    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "this":Ljavax/script/AbstractScriptEngine;
    :cond_0
    move v2, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 123
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 125
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid scope value."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getContext()Ljavax/script/ScriptContext;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0
.end method

.method protected getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "nn":Ljavax/script/Bindings;
    new-instance v4, Ljavax/script/SimpleScriptContext;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavax/script/SimpleScriptContext;-><init>()V

    move-object v2, v4

    .line 291
    .local v2, "ctxt":Ljavax/script/SimpleScriptContext;
    move-object v4, v0

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v4

    move-object v3, v4

    .line 293
    .local v3, "gs":Ljavax/script/Bindings;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 294
    move-object v4, v2

    move-object v5, v3

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 297
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 298
    move-object v4, v2

    move-object v5, v1

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Ljavax/script/SimpleScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 304
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getReader()Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setReader(Ljava/io/Reader;)V

    .line 305
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setWriter(Ljava/io/Writer;)V

    .line 306
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    invoke-interface {v5}, Ljavax/script/ScriptContext;->getErrorWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/script/SimpleScriptContext;->setErrorWriter(Ljava/io/Writer;)V

    .line 308
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljavax/script/AbstractScriptEngine;
    return-object v0

    .line 301
    .restart local v0    # "this":Ljavax/script/AbstractScriptEngine;
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Engine scope Bindings may not be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljavax/script/AbstractScriptEngine;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v4

    move-object v3, v4

    .line 165
    .local v3, "nn":Ljavax/script/Bindings;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 166
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 169
    :cond_0
    return-void
.end method

.method public setBindings(Ljavax/script/Bindings;I)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "bindings":Ljavax/script/Bindings;
    move v2, p2

    .local v2, "scope":I
    move v3, v2

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 144
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    move-object v4, v1

    const/16 v5, 0xc8

    invoke-interface {v3, v4, v5}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    move v3, v2

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 146
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    move-object v4, v1

    const/16 v5, 0x64

    invoke-interface {v3, v4, v5}, Ljavax/script/ScriptContext;->setBindings(Ljavax/script/Bindings;I)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid scope value."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setContext(Ljavax/script/ScriptContext;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavax/script/AbstractScriptEngine;
    move-object v1, p1

    .local v1, "ctxt":Ljavax/script/ScriptContext;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "null context"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/AbstractScriptEngine;->context:Ljavax/script/ScriptContext;

    .line 96
    return-void
.end method
