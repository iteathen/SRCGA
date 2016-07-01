.class public interface abstract Ljavax/script/ScriptEngineFactory;
.super Ljava/lang/Object;
.source "ScriptEngineFactory.java"


# virtual methods
.method public abstract getEngineName()Ljava/lang/String;
.end method

.method public abstract getEngineVersion()Ljava/lang/String;
.end method

.method public abstract getExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguageName()Ljava/lang/String;
.end method

.method public abstract getLanguageVersion()Ljava/lang/String;
.end method

.method public varargs abstract getMethodCallSyntax(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMimeTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputStatement(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public varargs abstract getProgram([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getScriptEngine()Ljavax/script/ScriptEngine;
.end method
