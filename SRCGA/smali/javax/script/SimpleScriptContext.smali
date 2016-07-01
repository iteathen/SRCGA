.class public Ljavax/script/SimpleScriptContext;
.super Ljava/lang/Object;
.source "SimpleScriptContext.java"

# interfaces
.implements Ljavax/script/ScriptContext;


# static fields
.field private static scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected engineScope:Ljavax/script/Bindings;

.field protected errorWriter:Ljava/io/Writer;

.field protected globalScope:Ljavax/script/Bindings;

.field protected reader:Ljava/io/Reader;

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    .line 320
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 322
    sget-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    .line 323
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v1, v0

    new-instance v2, Ljavax/script/SimpleBindings;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavax/script/SimpleBindings;-><init>()V

    iput-object v2, v1, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    .line 91
    move-object v1, v0

    new-instance v2, Ljava/io/InputStreamReader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    .line 92
    move-object v1, v0

    new-instance v2, Ljava/io/PrintWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v2, v1, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    .line 93
    move-object v1, v0

    new-instance v2, Ljava/io/PrintWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v2, v1, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    .line 94
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Ljavax/script/SimpleScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 149
    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    :goto_0
    return-object v0

    .line 145
    .restart local v0    # "this":Ljavax/script/SimpleScriptContext;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Ljavax/script/SimpleScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "scope":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 178
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Illegal scope value."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 175
    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    :goto_0
    return-object v0

    .line 172
    .restart local v0    # "this":Ljavax/script/SimpleScriptContext;
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v3, :cond_0

    .line 173
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 175
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAttributesScope(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/16 v2, 0x64

    move v0, v2

    .line 289
    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    :goto_0
    return v0

    .line 286
    .restart local v0    # "this":Ljavax/script/SimpleScriptContext;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const/16 v2, 0xc8

    move v0, v2

    goto :goto_0

    .line 289
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public getBindings(I)Ljavax/script/Bindings;
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move v1, p1

    .local v1, "scope":I
    move v2, v1

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 304
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    move-object v0, v2

    .line 306
    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    :goto_0
    return-object v0

    .line 305
    .restart local v0    # "this":Ljavax/script/SimpleScriptContext;
    :cond_0
    move v2, v1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 306
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    move-object v0, v2

    goto :goto_0

    .line 308
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Illegal scope value."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getErrorWriter()Ljava/io/Writer;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    sget-object v1, Ljavax/script/SimpleScriptContext;->scopes:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "scope":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 210
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Illegal scope value."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :sswitch_0
    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    move-object v3, v0

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 207
    .end local v0    # "this":Ljavax/script/SimpleScriptContext;
    :goto_0
    return-object v0

    .line 201
    .restart local v0    # "this":Ljavax/script/SimpleScriptContext;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 204
    :sswitch_1
    move-object v3, v0

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 205
    move-object v3, v0

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Ljavax/script/SimpleScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 207
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 8

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v3, p3

    .local v3, "scope":I
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 240
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Illegal scope value."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 231
    .line 237
    :goto_0
    return-void

    .line 234
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    if-eqz v4, :cond_0

    .line 235
    move-object v4, v0

    iget-object v4, v4, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    :cond_0
    goto :goto_0

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBindings(Ljavax/script/Bindings;I)V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "bindings":Ljavax/script/Bindings;
    move v2, p2

    .local v2, "scope":I
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid scope value."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :sswitch_0
    move-object v3, v1

    if-nez v3, :cond_0

    .line 116
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Engine scope cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavax/script/SimpleScriptContext;->engineScope:Ljavax/script/Bindings;

    .line 119
    .line 126
    :goto_0
    return-void

    .line 121
    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavax/script/SimpleScriptContext;->globalScope:Ljavax/script/Bindings;

    .line 122
    goto :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setErrorWriter(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/SimpleScriptContext;->errorWriter:Ljava/io/Writer;

    .line 272
    return-void
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/SimpleScriptContext;->reader:Ljava/io/Reader;

    .line 257
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleScriptContext;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/SimpleScriptContext;->writer:Ljava/io/Writer;

    .line 262
    return-void
.end method
