# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_231_021_174_425) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.uuid 'record_id', null: false
    t.uuid 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness',
                                                    unique: true
  end

  create_table 'active_storage_blobs', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum'
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'categories', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'title', default: '', null: false
    t.string 'description'
    t.uuid 'parent_category_id'
    t.uuid 'organization_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['organization_id'], name: 'index_categories_on_organization_id'
    t.index ['parent_category_id'], name: 'index_categories_on_parent_category_id'
  end

  create_table 'employees', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'email'
    t.bigint 'organization_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['organization_id'], name: 'index_employees_on_organization_id'
  end

  create_table 'organizations', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name'
    t.boolean 'notify_by_email', default: false, null: false
    t.string 'key'
    t.string 'slug'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'reports', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'slug', default: '', null: false
    t.uuid 'category_id'
    t.datetime 'occurrence'
    t.string 'description'
    t.string 'relation_with_the_company'
    t.string 'person_involved'
    t.string 'full_name'
    t.string 'localization'
    t.string 'frequency'
    t.string 'source_of_true'
    t.boolean 'already_reported'
    t.string 'additional_information'
    t.string 'person_reported'
    t.string 'status'
    t.uuid 'organization_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_reports_on_category_id'
    t.index ['organization_id'], name: 'index_reports_on_organization_id'
    t.index ['slug'], name: 'index_reports_on_slug', unique: true
  end

  create_table 'users', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'provider', default: 'email', null: false
    t.string 'uid', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.boolean 'allow_password_change', default: false
    t.datetime 'remember_created_at'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.string 'email'
    t.string 'first_name', default: '', null: false
    t.string 'last_name', default: '', null: false
    t.string 'role'
    t.json 'tokens'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.uuid 'organization_id'
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['organization_id'], name: 'index_users_on_organization_id'
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index %w[uid provider], name: 'index_users_on_uid_and_provider', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
end
