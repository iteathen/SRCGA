.class public interface abstract Ljavax/script/ScriptEngine;
.super Ljava/lang/Object;
.source "ScriptEngine.java"


# static fields
.field public static final ARGV:Ljava/lang/String; = "javax.script.argv"

.field public static final ENGINE:Ljava/lang/String; = "javax.script.engine"

.field public static final ENGINE_VERSION:Ljava/lang/String; = "javax.script.engine_version"

.field public static final FILENAME:Ljava/lang/String; = "javax.script.filename"

.field public static final LANGUAGE:Ljava/lang/String; = "javax.script.language"

.field public static final LANGUAGE_VERSION:Ljava/lang/String; = "javax.script.language_version"

.field public static final NAME:Ljava/lang/String; = "javax.script.name"


# virtual methods
.method public abstract createBindings()Ljavax/script/Bindings;
.end method

.method public abstract eval(Ljava/io/Reader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/io/Reader;Ljavax/script/Bindings;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getBindings(I)Ljavax/script/Bindings;
.end method

.method public abstract getContext()Ljavax/script/ScriptContext;
.end method

.method public abstract getFactory()Ljavax/script/ScriptEngineFactory;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setBindings(Ljavax/script/Bindings;I)V
.end method

.method public abstract setContext(Ljavax/script/ScriptContext;)V
.end method
